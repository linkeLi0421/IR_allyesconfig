; ModuleID = '/llk/IR_all_yes/sound/soc/ti/omap-twl4030.c_pt.bc'
source_filename = "../sound/soc/ti/omap-twl4030.c"
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
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.omap_tw4030_pdata = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.omap_twl4030 = type { i32, %struct.snd_soc_jack }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_omap_twl4030__240_338_omap_twl4030_driver_init6 = internal global ptr @omap_twl4030_driver_init, section ".initcall6.init", align 4
@omap_twl4030_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_twl4030_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_twl4030_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_twl4030_driver_exit = internal global ptr @omap_twl4030_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [67 x i8] c"snd_soc_omap_twl4030.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [85 x i8] c"snd_soc_omap_twl4030.description=ALSA SoC for TI SoC based boards with twl4030 codec\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [60 x i8] c"snd_soc_omap_twl4030.file=sound/soc/ti/snd-soc-omap-twl4030\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [33 x i8] c"snd_soc_omap_twl4030.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [49 x i8] c"snd_soc_omap_twl4030.alias=platform:omap-twl4030\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap-twl4030\00", [19 x i8] zeroinitializer }, align 32
@omap_twl4030_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-twl4030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@omap_twl4030_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @omap_twl4030_dai_links, i32 2, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @dapm_widgets, i32 12, ptr @audio_map, i32 22, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,model\00", [23 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Card name is not provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_twl4030_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/ti/omap-twl4030.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry_ptr = internal global ptr @omap_twl4030_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,mcbsp\00", [23 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"McBSP node is not provided\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry_ptr.10 = internal global ptr @omap_twl4030_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,mcbsp-voice\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,jack-det-gpio\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,audio-routing\00", [47 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry_ptr.15 = internal global ptr @omap_twl4030_probe._entry.14, section ".printk_index", align 4
@omap_twl4030_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Missing pdata\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry_ptr.18 = internal global ptr @omap_twl4030_probe._entry.16, section ".printk_index", align 4
@omap_twl4030_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"devm_snd_soc_register_card() failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_twl4030_probe._entry_ptr.21 = internal global ptr @omap_twl4030_probe._entry.19, section ".printk_index", align 4
@audio_map = internal constant { [22 x %struct.snd_soc_dapm_route], [264 x i8] } { [22 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }], [264 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Earpiece Spk\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Handsfree Spk\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headset Stereophone\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ext Spk\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Carkit Spk\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main Mic\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub Mic\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Carkit Mic\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Digital0 Mic\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Digital1 Mic\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@dapm_widgets = internal constant { [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [528 x i8] } { [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [528 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HSOL\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HSOR\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFL\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFR\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PREDRIVEL\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PREDRIVER\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CARKITL\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CARKITR\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EARPIECE\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAINMIC\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Bias 1\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUBMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Bias 2\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HSMIC\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headset Mic Bias\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGIMIC0\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGIMIC1\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CARKITMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXL\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXR\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TWL4030 HiFi\00", [19 x i8] zeroinitializer }, align 32
@hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.58 }], [20 x i8] zeroinitializer }, align 32
@hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.59, ptr null, ptr @.str.60 }], [20 x i8] zeroinitializer }, align 32
@hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.58, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@omap_twl4030_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @omap_twl4030_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TWL4030 Voice\00", [18 x i8] zeroinitializer }, align 32
@voice_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.63 }], [20 x i8] zeroinitializer }, align 32
@voice_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.59, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@voice_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.63, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@omap_twl4030_dai_links = internal global { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [56 x i8] } { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.55, ptr @.str.55, ptr @hifi_cpus, i32 1, ptr @hifi_codecs, i32 1, ptr @hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @omap_twl4030_init, ptr null, ptr null, ptr @omap_twl4030_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.56, ptr @.str.56, ptr @voice_cpus, i32 1, ptr @voice_codecs, i32 1, ptr @voice_platforms, i32 1, i32 0, ptr null, i32 0, i32 4868, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap-mcbsp.2\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twl4030-hifi\00", [19 x i8] zeroinitializer }, align 32
@hs_jack_gpios = internal global { [1 x %struct.snd_soc_jack_gpio], [32 x i8] } { [1 x %struct.snd_soc_jack_gpio] [%struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.62, i32 3, i32 0, i32 200, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@hs_jack_pins = internal global { [2 x %struct.snd_soc_jack_pin], [56 x i8] } { [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.29, i32 2, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.24, i32 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsdet-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap-mcbsp.3\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-voice\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"omap_twl4030_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 329, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 331, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"omap_twl4030_of_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 323, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"omap_twl4030_card\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 226, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 255, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 256, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 260, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 262, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 271, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 283, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 286, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 299, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 308, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 315, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"audio_map\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 82, i32 40 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 67, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 68, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 69, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 70, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 71, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 73, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 74, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 75, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 76, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 77, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 78, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 79, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"dapm_widgets\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 66, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 84, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 85, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 87, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 88, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 90, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 91, i32 20 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 93, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 94, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 96, i32 25 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 99, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 100, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 101, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 102, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 104, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 105, i32 24 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 107, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 109, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 112, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 114, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 115, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 210, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant [10 x i8] c"hifi_cpus\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [12 x i8] c"hifi_codecs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"hifi_platforms\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"omap_twl4030_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 62, i32 33 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 217, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant [11 x i8] c"voice_cpus\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [13 x i8] c"voice_codecs\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"voice_platforms\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [23 x i8] c"omap_twl4030_dai_links\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 208, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 198, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant [14 x i8] c"hs_jack_gpios\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 131, i32 33 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 158, i32 42 }
@___asan_gen_.278 = private unnamed_addr constant [13 x i8] c"hs_jack_pins\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 119, i32 32 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 133, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [31 x i8] c"../sound/soc/ti/omap-twl4030.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 203, i32 1 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_omap_twl4030_driver_exit, ptr @__initcall__kmod_snd_soc_omap_twl4030__240_338_omap_twl4030_driver_init6, ptr @omap_twl4030_driver_exit, ptr @omap_twl4030_probe._entry, ptr @omap_twl4030_probe._entry.14, ptr @omap_twl4030_probe._entry.16, ptr @omap_twl4030_probe._entry.19, ptr @omap_twl4030_probe._entry.8, ptr @omap_twl4030_probe._entry_ptr, ptr @omap_twl4030_probe._entry_ptr.10, ptr @omap_twl4030_probe._entry_ptr.15, ptr @omap_twl4030_probe._entry_ptr.18, ptr @omap_twl4030_probe._entry_ptr.21, ptr @omap_twl4030_driver, ptr @.str, ptr @omap_twl4030_of_match, ptr @omap_twl4030_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.20, ptr @audio_map, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @dapm_widgets, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @hifi_cpus, ptr @hifi_codecs, ptr @hifi_platforms, ptr @omap_twl4030_ops, ptr @.str.56, ptr @voice_cpus, ptr @voice_codecs, ptr @voice_platforms, ptr @omap_twl4030_dai_links, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @hs_jack_gpios, ptr @.str.61, ptr @hs_jack_pins, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_widgets to i32), i32 2160, i32 2688, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_twl4030_dai_links to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_jack_gpios to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_jack_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_twl4030_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_twl4030_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_twl4030_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_twl4030_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_twl4030_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i119 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @omap_twl4030_card, i32 0, i32 5), align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else40, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @omap_twl4030_card, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup75

if.end11:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i118 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end17

of_parse_phandle.exit:                            ; preds = %if.end11
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %of_parse_phandle.exit.do.end17_crit_edge, label %if.end19

of_parse_phandle.exit.do.end17_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.end17:                                         ; preds = %of_parse_phandle.exit.do.end17_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup75

if.end19:                                         ; preds = %of_parse_phandle.exit
  %7 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 0, i32 2), align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dai_name, align 4
  %9 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 0, i32 2), align 4
  %of_node20 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %of_node20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %of_node20, align 4
  %11 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 0, i32 6), align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  %13 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 0, i32 6), align 4
  %of_node21 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %of_node21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %of_node21, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i119) #5
  %15 = call ptr @memset(ptr %args.i119, i32 255, i32 72)
  %call.i120 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %of_parse_phandle.exit124, label %of_parse_phandle.exit124.thread

of_parse_phandle.exit124.thread:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i119) #5
  br label %if.then24

of_parse_phandle.exit124:                         ; preds = %if.end19
  %16 = ptrtoint ptr %args.i119 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i119, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i119) #5
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %of_parse_phandle.exit124.if.then24_crit_edge, label %if.else

of_parse_phandle.exit124.if.then24_crit_edge:     ; preds = %of_parse_phandle.exit124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %of_parse_phandle.exit124.if.then24_crit_edge, %of_parse_phandle.exit124.thread
  store i32 1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @omap_twl4030_card, i32 0, i32 25), align 4
  br label %if.end29

if.else:                                          ; preds = %of_parse_phandle.exit124
  call void @__sanitizer_cov_trace_pc() #7
  %18 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 1, i32 2), align 4
  %dai_name25 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dai_name25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dai_name25, align 4
  %20 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 1, i32 2), align 4
  %of_node26 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %of_node26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %of_node26, align 4
  %22 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 1, i32 6), align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %22, align 4
  %24 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @omap_twl4030_dai_links, i32 0, i32 1, i32 6), align 4
  %of_node28 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %of_node28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %17, ptr %of_node28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  %call.i125 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null) #5
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i125, ptr %call.i, align 4
  %call31 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef null) #5
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end29.if.end65_crit_edge, label %if.then33

if.end29.if.end65_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then33:                                        ; preds = %if.end29
  %call34 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @omap_twl4030_card, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then33.cleanup75_crit_edge

if.then33.cleanup75_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %bf.load = load i8, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @omap_twl4030_card, i32 0, i32 56), align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @omap_twl4030_card, i32 0, i32 56), align 4
  br label %if.end65

if.else40:                                        ; preds = %if.end
  %tobool41.not = icmp eq ptr %1, null
  br i1 %tobool41.not, label %do.end62, label %if.then42

if.then42:                                        ; preds = %if.else40
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %tobool43.not = icmp eq ptr %28, null
  br i1 %tobool43.not, label %do.end50, label %if.then44

if.then44:                                        ; preds = %if.then42
  store ptr %28, ptr @omap_twl4030_card, align 4
  %voice_connected = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %voice_connected to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %voice_connected, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool53.not = icmp eq i8 %30, 0
  br i1 %tobool53.not, label %if.then54, label %if.then44.if.end56_crit_edge

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup75

if.then54:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  store i32 1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @omap_twl4030_card, i32 0, i32 25), align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then44.if.end56_crit_edge
  %jack_detect57 = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %jack_detect57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jack_detect57, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call.i, align 4
  br label %if.end65

do.end62:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup75

if.end65:                                         ; preds = %if.end56, %if.end37, %if.end29.if.end65_crit_edge
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @omap_twl4030_card, i32 0, i32 57), align 4
  %call67 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @omap_twl4030_card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end65.cleanup75_crit_edge, label %do.end72

if.end65.cleanup75_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call67) #8
  br label %cleanup75

cleanup75:                                        ; preds = %do.end72, %if.end65.cleanup75_crit_edge, %do.end62, %do.end50, %if.then33.cleanup75_crit_edge, %do.end17, %do.end, %entry.cleanup75_crit_edge
  %retval.1 = phi i32 [ %call67, %do.end72 ], [ -19, %do.end50 ], [ -19, %do.end62 ], [ -12, %entry.cleanup75_crit_edge ], [ 0, %if.end65.cleanup75_crit_edge ], [ %call34, %if.then33.cleanup75_crit_edge ], [ -22, %do.end17 ], [ -19, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_twl4030_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %dapm2 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 50
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  store i32 %9, ptr @hs_jack_gpios, align 4
  %hs_jack = getelementptr inbounds %struct.omap_twl4030, ptr %7, i32 0, i32 1
  %call6 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef 3, ptr noundef %hs_jack, ptr noundef nonnull @hs_jack_pins, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call9 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef %hs_jack, i32 noundef 1, ptr noundef nonnull @hs_jack_gpios) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %lor.lhs.false

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end13
  %custom_routing = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %custom_routing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %custom_routing, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %has_ear = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %has_ear to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_ear, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end17.twl4030_disconnect_pin.exit_crit_edge

if.end17.twl4030_disconnect_pin.exit_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.22) #5
  br label %twl4030_disconnect_pin.exit

twl4030_disconnect_pin.exit:                      ; preds = %if.then.i, %if.end17.twl4030_disconnect_pin.exit_crit_edge
  %has_hf = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %has_hf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_hf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i75 = icmp eq i8 %15, 0
  br i1 %tobool.not.i75, label %if.then.i77, label %twl4030_disconnect_pin.exit.twl4030_disconnect_pin.exit78_crit_edge

twl4030_disconnect_pin.exit.twl4030_disconnect_pin.exit78_crit_edge: ; preds = %twl4030_disconnect_pin.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit78

if.then.i77:                                      ; preds = %twl4030_disconnect_pin.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i76 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.23) #5
  br label %twl4030_disconnect_pin.exit78

twl4030_disconnect_pin.exit78:                    ; preds = %if.then.i77, %twl4030_disconnect_pin.exit.twl4030_disconnect_pin.exit78_crit_edge
  %has_hs = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %has_hs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_hs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i79 = icmp eq i8 %17, 0
  br i1 %tobool.not.i79, label %if.then.i81, label %twl4030_disconnect_pin.exit78.twl4030_disconnect_pin.exit82_crit_edge

twl4030_disconnect_pin.exit78.twl4030_disconnect_pin.exit82_crit_edge: ; preds = %twl4030_disconnect_pin.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit82

if.then.i81:                                      ; preds = %twl4030_disconnect_pin.exit78
  call void @__sanitizer_cov_trace_pc() #7
  %call.i80 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.24) #5
  br label %twl4030_disconnect_pin.exit82

twl4030_disconnect_pin.exit82:                    ; preds = %if.then.i81, %twl4030_disconnect_pin.exit78.twl4030_disconnect_pin.exit82_crit_edge
  %has_predriv = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %has_predriv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_predriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i83 = icmp eq i8 %19, 0
  br i1 %tobool.not.i83, label %if.then.i85, label %twl4030_disconnect_pin.exit82.twl4030_disconnect_pin.exit86_crit_edge

twl4030_disconnect_pin.exit82.twl4030_disconnect_pin.exit86_crit_edge: ; preds = %twl4030_disconnect_pin.exit82
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit86

if.then.i85:                                      ; preds = %twl4030_disconnect_pin.exit82
  call void @__sanitizer_cov_trace_pc() #7
  %call.i84 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.25) #5
  br label %twl4030_disconnect_pin.exit86

twl4030_disconnect_pin.exit86:                    ; preds = %if.then.i85, %twl4030_disconnect_pin.exit82.twl4030_disconnect_pin.exit86_crit_edge
  %has_carkit = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %has_carkit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_carkit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i87 = icmp eq i8 %21, 0
  br i1 %tobool.not.i87, label %if.then.i89, label %twl4030_disconnect_pin.exit86.twl4030_disconnect_pin.exit90_crit_edge

twl4030_disconnect_pin.exit86.twl4030_disconnect_pin.exit90_crit_edge: ; preds = %twl4030_disconnect_pin.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit90

if.then.i89:                                      ; preds = %twl4030_disconnect_pin.exit86
  call void @__sanitizer_cov_trace_pc() #7
  %call.i88 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.26) #5
  br label %twl4030_disconnect_pin.exit90

twl4030_disconnect_pin.exit90:                    ; preds = %if.then.i89, %twl4030_disconnect_pin.exit86.twl4030_disconnect_pin.exit90_crit_edge
  %has_mainmic = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %has_mainmic to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_mainmic, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i91 = icmp eq i8 %23, 0
  br i1 %tobool.not.i91, label %if.then.i93, label %twl4030_disconnect_pin.exit90.twl4030_disconnect_pin.exit94_crit_edge

twl4030_disconnect_pin.exit90.twl4030_disconnect_pin.exit94_crit_edge: ; preds = %twl4030_disconnect_pin.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit94

if.then.i93:                                      ; preds = %twl4030_disconnect_pin.exit90
  call void @__sanitizer_cov_trace_pc() #7
  %call.i92 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.27) #5
  br label %twl4030_disconnect_pin.exit94

twl4030_disconnect_pin.exit94:                    ; preds = %if.then.i93, %twl4030_disconnect_pin.exit90.twl4030_disconnect_pin.exit94_crit_edge
  %has_submic = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %has_submic to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_submic, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i95 = icmp eq i8 %25, 0
  br i1 %tobool.not.i95, label %if.then.i97, label %twl4030_disconnect_pin.exit94.twl4030_disconnect_pin.exit98_crit_edge

twl4030_disconnect_pin.exit94.twl4030_disconnect_pin.exit98_crit_edge: ; preds = %twl4030_disconnect_pin.exit94
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit98

if.then.i97:                                      ; preds = %twl4030_disconnect_pin.exit94
  call void @__sanitizer_cov_trace_pc() #7
  %call.i96 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.28) #5
  br label %twl4030_disconnect_pin.exit98

twl4030_disconnect_pin.exit98:                    ; preds = %if.then.i97, %twl4030_disconnect_pin.exit94.twl4030_disconnect_pin.exit98_crit_edge
  %has_hsmic = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 10
  %26 = ptrtoint ptr %has_hsmic to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_hsmic, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i99 = icmp eq i8 %27, 0
  br i1 %tobool.not.i99, label %if.then.i101, label %twl4030_disconnect_pin.exit98.twl4030_disconnect_pin.exit102_crit_edge

twl4030_disconnect_pin.exit98.twl4030_disconnect_pin.exit102_crit_edge: ; preds = %twl4030_disconnect_pin.exit98
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit102

if.then.i101:                                     ; preds = %twl4030_disconnect_pin.exit98
  call void @__sanitizer_cov_trace_pc() #7
  %call.i100 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.29) #5
  br label %twl4030_disconnect_pin.exit102

twl4030_disconnect_pin.exit102:                   ; preds = %if.then.i101, %twl4030_disconnect_pin.exit98.twl4030_disconnect_pin.exit102_crit_edge
  %has_carkitmic = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %has_carkitmic to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_carkitmic, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i103 = icmp eq i8 %29, 0
  br i1 %tobool.not.i103, label %if.then.i105, label %twl4030_disconnect_pin.exit102.twl4030_disconnect_pin.exit106_crit_edge

twl4030_disconnect_pin.exit102.twl4030_disconnect_pin.exit106_crit_edge: ; preds = %twl4030_disconnect_pin.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit106

if.then.i105:                                     ; preds = %twl4030_disconnect_pin.exit102
  call void @__sanitizer_cov_trace_pc() #7
  %call.i104 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.30) #5
  br label %twl4030_disconnect_pin.exit106

twl4030_disconnect_pin.exit106:                   ; preds = %if.then.i105, %twl4030_disconnect_pin.exit102.twl4030_disconnect_pin.exit106_crit_edge
  %has_digimic0 = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 12
  %30 = ptrtoint ptr %has_digimic0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_digimic0, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i107 = icmp eq i8 %31, 0
  br i1 %tobool.not.i107, label %if.then.i109, label %twl4030_disconnect_pin.exit106.twl4030_disconnect_pin.exit110_crit_edge

twl4030_disconnect_pin.exit106.twl4030_disconnect_pin.exit110_crit_edge: ; preds = %twl4030_disconnect_pin.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit110

if.then.i109:                                     ; preds = %twl4030_disconnect_pin.exit106
  call void @__sanitizer_cov_trace_pc() #7
  %call.i108 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.31) #5
  br label %twl4030_disconnect_pin.exit110

twl4030_disconnect_pin.exit110:                   ; preds = %if.then.i109, %twl4030_disconnect_pin.exit106.twl4030_disconnect_pin.exit110_crit_edge
  %has_digimic1 = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 13
  %32 = ptrtoint ptr %has_digimic1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_digimic1, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i111 = icmp eq i8 %33, 0
  br i1 %tobool.not.i111, label %if.then.i113, label %twl4030_disconnect_pin.exit110.twl4030_disconnect_pin.exit114_crit_edge

twl4030_disconnect_pin.exit110.twl4030_disconnect_pin.exit114_crit_edge: ; preds = %twl4030_disconnect_pin.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_disconnect_pin.exit114

if.then.i113:                                     ; preds = %twl4030_disconnect_pin.exit110
  call void @__sanitizer_cov_trace_pc() #7
  %call.i112 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.32) #5
  br label %twl4030_disconnect_pin.exit114

twl4030_disconnect_pin.exit114:                   ; preds = %if.then.i113, %twl4030_disconnect_pin.exit110.twl4030_disconnect_pin.exit114_crit_edge
  %has_linein = getelementptr inbounds %struct.omap_tw4030_pdata, ptr %5, i32 0, i32 14
  %34 = ptrtoint ptr %has_linein to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_linein, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i115 = icmp eq i8 %35, 0
  br i1 %tobool.not.i115, label %if.then.i117, label %twl4030_disconnect_pin.exit114.cleanup_crit_edge

twl4030_disconnect_pin.exit114.cleanup_crit_edge: ; preds = %twl4030_disconnect_pin.exit114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i117:                                     ; preds = %twl4030_disconnect_pin.exit114
  call void @__sanitizer_cov_trace_pc() #7
  %call.i116 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm2, ptr noundef nonnull @.str.33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i117, %twl4030_disconnect_pin.exit114.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %twl4030_disconnect_pin.exit114.cleanup_crit_edge ], [ 0, %if.then.i117 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_twl4030_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %fmt.0 = phi i32 [ 4868, %sw.bb1 ], [ 4097, %entry.sw.epilog_crit_edge ]
  %call2 = tail call i32 @snd_soc_runtime_set_dai_fmt(ptr noundef %1, i32 noundef %fmt.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_runtime_set_dai_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !131, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_snd_soc_omap_twl4030__240_338_omap_twl4030_driver_init6, !1, !"__initcall__kmod_snd_soc_omap_twl4030__240_338_omap_twl4030_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/omap-twl4030.c", i32 338, i32 1}
!2 = !{ptr @__exitcall_omap_twl4030_driver_exit, !1, !"__exitcall_omap_twl4030_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/omap-twl4030.c", i32 340, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/omap-twl4030.c", i32 341, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/omap-twl4030.c", i32 342, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../sound/soc/ti/omap-twl4030.c", i32 343, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/omap-twl4030.c", i32 331, i32 11}
!14 = !{ptr @omap_twl4030_driver, !15, !"omap_twl4030_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/omap-twl4030.c", i32 329, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/ti/omap-twl4030.c", i32 255, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/ti/omap-twl4030.c", i32 256, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @omap_twl4030_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @omap_twl4030_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/ti/omap-twl4030.c", i32 260, i32 37}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/ti/omap-twl4030.c", i32 262, i32 4}
!30 = !{ptr @omap_twl4030_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @omap_twl4030_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/ti/omap-twl4030.c", i32 271, i32 37}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/ti/omap-twl4030.c", i32 283, i32 13}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/ti/omap-twl4030.c", i32 286, i32 33}
!38 = !{ptr @omap_twl4030_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../sound/soc/ti/omap-twl4030.c", i32 299, i32 4}
!40 = !{ptr @omap_twl4030_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/omap-twl4030.c", i32 308, i32 3}
!43 = !{ptr @omap_twl4030_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @omap_twl4030_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/ti/omap-twl4030.c", i32 315, i32 3}
!47 = !{ptr @omap_twl4030_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap_twl4030_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @omap_twl4030_card, !50, !"omap_twl4030_card", i1 false, i1 false}
!50 = !{!"../sound/soc/ti/omap-twl4030.c", i32 226, i32 28}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/ti/omap-twl4030.c", i32 67, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/ti/omap-twl4030.c", i32 68, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/ti/omap-twl4030.c", i32 69, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/ti/omap-twl4030.c", i32 70, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/ti/omap-twl4030.c", i32 71, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/ti/omap-twl4030.c", i32 73, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/ti/omap-twl4030.c", i32 74, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/ti/omap-twl4030.c", i32 75, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/ti/omap-twl4030.c", i32 76, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/ti/omap-twl4030.c", i32 77, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ti/omap-twl4030.c", i32 78, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/ti/omap-twl4030.c", i32 79, i32 2}
!75 = !{ptr @dapm_widgets, !76, !"dapm_widgets", i1 false, i1 false}
!76 = !{!"../sound/soc/ti/omap-twl4030.c", i32 66, i32 41}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/ti/omap-twl4030.c", i32 84, i32 32}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/ti/omap-twl4030.c", i32 85, i32 32}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/ti/omap-twl4030.c", i32 87, i32 26}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/ti/omap-twl4030.c", i32 88, i32 26}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/ti/omap-twl4030.c", i32 90, i32 20}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/ti/omap-twl4030.c", i32 91, i32 20}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/ti/omap-twl4030.c", i32 93, i32 23}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/ti/omap-twl4030.c", i32 94, i32 23}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/ti/omap-twl4030.c", i32 96, i32 25}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/ti/omap-twl4030.c", i32 99, i32 3}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/ti/omap-twl4030.c", i32 100, i32 21}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/ti/omap-twl4030.c", i32 101, i32 3}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/ti/omap-twl4030.c", i32 102, i32 20}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/ti/omap-twl4030.c", i32 104, i32 3}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/ti/omap-twl4030.c", i32 105, i32 24}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/ti/omap-twl4030.c", i32 107, i32 3}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/ti/omap-twl4030.c", i32 109, i32 3}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/ti/omap-twl4030.c", i32 112, i32 3}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/ti/omap-twl4030.c", i32 114, i32 3}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/ti/omap-twl4030.c", i32 115, i32 3}
!117 = !{ptr @audio_map, !118, !"audio_map", i1 false, i1 false}
!118 = !{!"../sound/soc/ti/omap-twl4030.c", i32 82, i32 40}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/ti/omap-twl4030.c", i32 210, i32 11}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/ti/omap-twl4030.c", i32 217, i32 11}
!123 = !{ptr @omap_twl4030_dai_links, !124, !"omap_twl4030_dai_links", i1 false, i1 false}
!124 = !{!"../sound/soc/ti/omap-twl4030.c", i32 208, i32 32}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/ti/omap-twl4030.c", i32 198, i32 1}
!127 = !{ptr @hifi_cpus, !126, !"hifi_cpus", i1 false, i1 false}
!128 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hifi_codecs, !126, !"hifi_codecs", i1 false, i1 false}
!131 = !{ptr @hifi_platforms, !126, !"hifi_platforms", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/ti/omap-twl4030.c", i32 158, i32 42}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/ti/omap-twl4030.c", i32 133, i32 11}
!136 = !{ptr @hs_jack_gpios, !137, !"hs_jack_gpios", i1 false, i1 false}
!137 = !{!"../sound/soc/ti/omap-twl4030.c", i32 131, i32 33}
!138 = !{ptr @hs_jack_pins, !139, !"hs_jack_pins", i1 false, i1 false}
!139 = !{!"../sound/soc/ti/omap-twl4030.c", i32 119, i32 32}
!140 = !{ptr @omap_twl4030_ops, !141, !"omap_twl4030_ops", i1 false, i1 false}
!141 = !{!"../sound/soc/ti/omap-twl4030.c", i32 62, i32 33}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/ti/omap-twl4030.c", i32 203, i32 1}
!144 = !{ptr @voice_cpus, !143, !"voice_cpus", i1 false, i1 false}
!145 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @voice_codecs, !143, !"voice_codecs", i1 false, i1 false}
!147 = !{ptr @voice_platforms, !143, !"voice_platforms", i1 false, i1 false}
!148 = !{ptr @omap_twl4030_of_match, !149, !"omap_twl4030_of_match", i1 false, i1 false}
!149 = !{!"../sound/soc/ti/omap-twl4030.c", i32 323, i32 34}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i8 0, i8 2}
