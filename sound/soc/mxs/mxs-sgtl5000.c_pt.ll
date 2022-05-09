; ModuleID = '/llk/IR_all_yes/sound/soc/mxs/mxs-sgtl5000.c_pt.bc'
source_filename = "../sound/soc/mxs/mxs-sgtl5000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
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

@__initcall__kmod_snd_soc_mxs_sgtl5000__238_191_mxs_sgtl5000_audio_driver_init6 = internal global ptr @mxs_sgtl5000_audio_driver_init, section ".initcall6.init", align 4
@mxs_sgtl5000_audio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_sgtl5000_probe, ptr @mxs_sgtl5000_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_sgtl5000_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_sgtl5000_audio_driver_exit = internal global ptr @mxs_sgtl5000_audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [58 x i8] c"snd_soc_mxs_sgtl5000.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [61 x i8] c"snd_soc_mxs_sgtl5000.description=MXS ALSA SoC Machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [61 x i8] c"snd_soc_mxs_sgtl5000.file=sound/soc/mxs/snd-soc-mxs-sgtl5000\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [33 x i8] c"snd_soc_mxs_sgtl5000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [49 x i8] c"snd_soc_mxs_sgtl5000.alias=platform:mxs-sgtl5000\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxs-sgtl5000\00", [19 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mxs-audio-sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mxs_sgtl5000 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.16, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mxs_sgtl5000_dai, i32 2, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saif-controllers\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio-codec\00", [20 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 120, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phandle missing or invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_sgtl5000_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/mxs/mxs-sgtl5000.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_probe._entry_ptr = internal global ptr @mxs_sgtl5000_probe._entry, section ".printk_index", align 4
@mxs_sgtl5000_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_probe._entry_ptr.10 = internal global ptr @mxs_sgtl5000_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-routing\00", [18 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to parse audio-routing (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_probe._entry_ptr.14 = internal global ptr @mxs_sgtl5000_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_soc_register_card failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxs_sgtl5000\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HiFi Tx\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@hifi_tx_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_tx_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.22 }], [20 x i8] zeroinitializer }, align 32
@hifi_tx_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mxs_sgtl5000_hifi_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mxs_sgtl5000_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HiFi Rx\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@hifi_rx_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_rx_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.22 }], [20 x i8] zeroinitializer }, align 32
@hifi_rx_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mxs_sgtl5000_dai = internal global { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [56 x i8] } { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.17, ptr @.str.18, ptr @hifi_tx_cpus, i32 1, ptr @hifi_tx_codecs, i32 1, ptr @hifi_tx_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mxs_sgtl5000_hifi_ops, ptr null, i8 64, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.19, ptr @.str.20, ptr @hifi_rx_cpus, i32 1, ptr @hifi_rx_codecs, i32 1, ptr @hifi_rx_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mxs_sgtl5000_hifi_ops, ptr null, i8 32, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgtl5000\00", [23 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 43, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set sysclk to %u.%03uMHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxs_sgtl5000_hw_params\00", [41 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_hw_params._entry_ptr = internal global ptr @mxs_sgtl5000_hw_params._entry, section ".printk_index", align 4
@mxs_sgtl5000_hw_params._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 51, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_hw_params._entry_ptr.26 = internal global ptr @mxs_sgtl5000_hw_params._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Jack\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Line In Jack\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line Out Jack\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ext Spk\00", [24 x i8] zeroinitializer }, align 32
@mxs_sgtl5000_dapm_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"mxs_sgtl5000_audio_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 182, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 184, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"mxs_sgtl5000_dt_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 176, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"mxs_sgtl5000\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 102, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 116, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 118, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 120, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 144, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 150, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 156, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 164, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 103, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 78, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 79, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"hifi_tx_cpus\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"hifi_tx_codecs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"hifi_tx_platforms\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"mxs_sgtl5000_hifi_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 58, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 85, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 86, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"hifi_rx_cpus\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"hifi_rx_codecs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"hifi_rx_platforms\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 71, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"mxs_sgtl5000_dai\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 76, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 66, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 42, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 50, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 95, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 96, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 97, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 98, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 99, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"mxs_sgtl5000_dapm_widgets\00", align 1
@___asan_gen_.157 = private constant [32 x i8] c"../sound/soc/mxs/mxs-sgtl5000.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 94, i32 41 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_mxs_sgtl5000_audio_driver_exit, ptr @__initcall__kmod_snd_soc_mxs_sgtl5000__238_191_mxs_sgtl5000_audio_driver_init6, ptr @mxs_sgtl5000_audio_driver_exit, ptr @mxs_sgtl5000_hw_params._entry, ptr @mxs_sgtl5000_hw_params._entry.25, ptr @mxs_sgtl5000_hw_params._entry_ptr, ptr @mxs_sgtl5000_hw_params._entry_ptr.26, ptr @mxs_sgtl5000_probe._entry, ptr @mxs_sgtl5000_probe._entry.12, ptr @mxs_sgtl5000_probe._entry.8, ptr @mxs_sgtl5000_probe._entry_ptr, ptr @mxs_sgtl5000_probe._entry_ptr.10, ptr @mxs_sgtl5000_probe._entry_ptr.14, ptr @mxs_sgtl5000_audio_driver, ptr @.str, ptr @mxs_sgtl5000_dt_ids, ptr @mxs_sgtl5000, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @hifi_tx_cpus, ptr @hifi_tx_codecs, ptr @hifi_tx_platforms, ptr @mxs_sgtl5000_hifi_ops, ptr @.str.19, ptr @.str.20, ptr @hifi_rx_cpus, ptr @hifi_rx_codecs, ptr @hifi_rx_platforms, ptr @mxs_sgtl5000_dai, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mxs_sgtl5000_dapm_widgets], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_audio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_tx_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_tx_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_tx_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_hifi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_rx_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_rx_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_rx_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_dai to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_hw_params._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_sgtl5000_dapm_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_sgtl5000_audio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_sgtl5000_audio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_sgtl5000_audio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_sgtl5000_audio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_sgtl5000_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i97 = alloca %struct.of_phandle_args, align 4
  %args.i91 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.of_parse_phandle.exit_crit_edge

entry.of_parse_phandle.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %entry.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ null, %entry.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i91) #5
  %5 = call ptr @memset(ptr %args.i91, i32 255, i32 72)
  %call.i92 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i91) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.end.i94, label %of_parse_phandle.exit.of_parse_phandle.exit96_crit_edge

of_parse_phandle.exit.of_parse_phandle.exit96_crit_edge: ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit96

if.end.i94:                                       ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %args.i91 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i91, align 4
  br label %of_parse_phandle.exit96

of_parse_phandle.exit96:                          ; preds = %if.end.i94, %of_parse_phandle.exit.of_parse_phandle.exit96_crit_edge
  %retval.0.i95 = phi ptr [ %7, %if.end.i94 ], [ null, %of_parse_phandle.exit.of_parse_phandle.exit96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i91) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i97) #5
  %8 = call ptr @memset(ptr %args.i97, i32 255, i32 72)
  %call.i98 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i100, label %of_parse_phandle.exit96.of_parse_phandle.exit102_crit_edge

of_parse_phandle.exit96.of_parse_phandle.exit102_crit_edge: ; preds = %of_parse_phandle.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit102

if.end.i100:                                      ; preds = %of_parse_phandle.exit96
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %args.i97 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i97, align 4
  br label %of_parse_phandle.exit102

of_parse_phandle.exit102:                         ; preds = %if.end.i100, %of_parse_phandle.exit96.of_parse_phandle.exit102_crit_edge
  %retval.0.i101 = phi ptr [ %10, %if.end.i100 ], [ null, %of_parse_phandle.exit96.of_parse_phandle.exit102_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i97) #5
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %of_parse_phandle.exit102.do.end_crit_edge, label %lor.lhs.false

of_parse_phandle.exit102.do.end_crit_edge:        ; preds = %of_parse_phandle.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %of_parse_phandle.exit102
  %tobool6.not = icmp eq ptr %retval.0.i95, null
  %tobool8.not = icmp eq ptr %retval.0.i101, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %for.body.preheader

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.preheader:                               ; preds = %lor.lhs.false
  %11 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 0, i32 4), align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  %13 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 0, i32 4), align 4
  %of_node13 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %of_node13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i101, ptr %of_node13, align 4
  %15 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 0, i32 2), align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dai_name, align 4
  %17 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 0, i32 2), align 4
  %of_node18 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %of_node18, align 4
  %19 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 0, i32 6), align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 4
  %21 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 0, i32 6), align 4
  %of_node24 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %of_node24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i, ptr %of_node24, align 4
  %23 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 1, i32 4), align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 4
  %25 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 1, i32 4), align 4
  %of_node13.1 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %of_node13.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i101, ptr %of_node13.1, align 4
  %27 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 1, i32 2), align 4
  %dai_name.1 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dai_name.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dai_name.1, align 4
  %29 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 1, i32 2), align 4
  %of_node18.1 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %of_node18.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i95, ptr %of_node18.1, align 4
  %31 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 1, i32 6), align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %31, align 4
  %33 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mxs_sgtl5000_dai, i32 0, i32 1, i32 6), align 4
  %of_node24.1 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %of_node24.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i95, ptr %of_node24.1, align 4
  call void @of_node_put(ptr noundef nonnull %retval.0.i101) #5
  call void @of_node_put(ptr noundef nonnull %retval.0.i) #5
  call void @of_node_put(ptr noundef nonnull %retval.0.i95) #5
  %call27 = call i32 @mxs_saif_get_mclk(i32 noundef 0, i32 noundef 11289600, i32 noundef 44100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %of_parse_phandle.exit102.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %cleanup

do.end32:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end34:                                         ; preds = %for.body.preheader
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mxs_sgtl5000, i32 0, i32 5), align 4
  %call37 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end34.if.end48_crit_edge, label %if.then39

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then39:                                        ; preds = %if.end34
  store ptr @mxs_sgtl5000_dapm_widgets, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mxs_sgtl5000, i32 0, i32 35), align 4
  store i32 5, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mxs_sgtl5000, i32 0, i32 36), align 4
  %call40 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @mxs_sgtl5000, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.if.end48_crit_edge, label %do.end45

if.then39.if.end48_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call40) #8
  br label %cleanup

if.end48:                                         ; preds = %if.then39.if.end48_crit_edge, %if.end34.if.end48_crit_edge
  %call50 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @mxs_sgtl5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.cleanup_crit_edge, label %if.then52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call50, ptr noundef nonnull @.str.15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end48.cleanup_crit_edge, %do.end45, %do.end32, %do.end
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ %call40, %do.end45 ], [ %call54, %if.then52 ], [ -22, %do.end ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_sgtl5000_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mxs_saif_put_mclk(i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxs_saif_get_mclk(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_sgtl5000_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %11)
  %cond = icmp eq i32 %11, 96000
  %mul3 = shl i32 %11, 9
  %mclk.0 = select i1 %cond, i32 24576000, i32 %mul3
  %call4 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mclk.0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 0, i32 noundef %mclk.0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %entry.cleanup.sink.split_crit_edge ], [ %9, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call4, %entry.cleanup.sink.split_crit_edge ], [ %call6, %if.end.cleanup.sink.split_crit_edge ]
  %dev12 = getelementptr inbounds %struct.snd_soc_dai, ptr %.sink, i32 0, i32 2
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 4
  %div13 = udiv i32 %mclk.0, 1000000
  %div14 = udiv i32 %mclk.0, 1000
  %rem15 = urem i32 %div14, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %div13, i32 noundef %rem15) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxs_saif_put_mclk(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_snd_soc_mxs_sgtl5000__238_191_mxs_sgtl5000_audio_driver_init6, !1, !"__initcall__kmod_snd_soc_mxs_sgtl5000__238_191_mxs_sgtl5000_audio_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 191, i32 1}
!2 = !{ptr @__exitcall_mxs_sgtl5000_audio_driver_exit, !1, !"__exitcall_mxs_sgtl5000_audio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 193, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 194, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 195, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 196, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 184, i32 11}
!14 = !{ptr @mxs_sgtl5000_audio_driver, !15, !"mxs_sgtl5000_audio_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 182, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 116, i32 36}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 118, i32 34}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 120, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mxs_sgtl5000_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mxs_sgtl5000_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 144, i32 3}
!30 = !{ptr @mxs_sgtl5000_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mxs_sgtl5000_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 150, i32 27}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 156, i32 4}
!36 = !{ptr @mxs_sgtl5000_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mxs_sgtl5000_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 164, i32 41}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 103, i32 11}
!42 = !{ptr @mxs_sgtl5000, !43, !"mxs_sgtl5000", i1 false, i1 false}
!43 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 102, i32 28}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 78, i32 12}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 79, i32 18}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 85, i32 12}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 86, i32 18}
!52 = !{ptr @mxs_sgtl5000_dai, !53, !"mxs_sgtl5000_dai", i1 false, i1 false}
!53 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 76, i32 32}
!54 = !{ptr @hifi_tx_cpus, !55, !"hifi_tx_cpus", i1 false, i1 false}
!55 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 66, i32 1}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hifi_tx_codecs, !55, !"hifi_tx_codecs", i1 false, i1 false}
!58 = !{ptr @hifi_tx_platforms, !55, !"hifi_tx_platforms", i1 false, i1 false}
!59 = !{ptr @mxs_sgtl5000_hifi_ops, !60, !"mxs_sgtl5000_hifi_ops", i1 false, i1 false}
!60 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 58, i32 33}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 42, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mxs_sgtl5000_hw_params._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mxs_sgtl5000_hw_params._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mxs_sgtl5000_hw_params._entry.25, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 50, i32 3}
!68 = !{ptr @mxs_sgtl5000_hw_params._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @hifi_rx_cpus, !70, !"hifi_rx_cpus", i1 false, i1 false}
!70 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 71, i32 1}
!71 = !{ptr @hifi_rx_codecs, !70, !"hifi_rx_codecs", i1 false, i1 false}
!72 = !{ptr @hifi_rx_platforms, !70, !"hifi_rx_platforms", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 95, i32 2}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 96, i32 2}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 97, i32 2}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 98, i32 2}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 99, i32 2}
!83 = !{ptr @mxs_sgtl5000_dapm_widgets, !84, !"mxs_sgtl5000_dapm_widgets", i1 false, i1 false}
!84 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 94, i32 41}
!85 = !{ptr @mxs_sgtl5000_dt_ids, !86, !"mxs_sgtl5000_dt_ids", i1 false, i1 false}
!86 = !{!"../sound/soc/mxs/mxs-sgtl5000.c", i32 176, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
