; ModuleID = '/llk/IR_all_yes/sound/soc/ti/j721e-evm.c_pt.bc'
source_filename = "../sound/soc/ti/j721e-evm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.j721e_audio_match_data = type { i32, i32, [2 x i32] }
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
%struct.j721e_priv = type { ptr, %struct.snd_soc_card, ptr, [5 x %struct.snd_soc_codec_conf], %struct.snd_interval, ptr, [2 x i32], [2 x i32], [2 x %struct.j721e_audio_domain], %struct.mutex }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_interval = type { i32, i32, i8 }
%struct.j721e_audio_domain = type { %struct.j721e_audio_clocks, %struct.j721e_audio_clocks, i32, i32, i32, i32 }
%struct.j721e_audio_clocks = type { ptr, [2 x ptr] }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__initcall__kmod_snd_soc_j721e_evm__241_909_j721e_soc_driver_init6 = internal global ptr @j721e_soc_driver_init, section ".initcall6.init", align 4
@j721e_soc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @j721e_soc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @j721e_audio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_j721e_soc_driver_exit = internal global ptr @j721e_soc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [64 x i8] c"snd_soc_j721e_evm.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [83 x i8] c"snd_soc_j721e_evm.description=ASoC machine driver for j721e Common Processor Board\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [54 x i8] c"snd_soc_j721e_evm.file=sound/soc/ti/snd-soc-j721e-evm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [33 x i8] c"snd_soc_j721e_evm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"j721e-audio\00", [20 x i8] zeroinitializer }, align 32
@j721e_audio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-cpb-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j721e_cpb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-cpb-ivi-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j721e_cpb_ivi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j7200-cpb-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @j7200_cpb_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@j721e_soc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of node is missing.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"j721e_soc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/ti/j721e-evm.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@j721e_soc_probe._entry_ptr = internal global ptr @j721e_soc_probe._entry, section ".printk_index", align 4
@j721e_soc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No compatible match found\0A\00", [37 x i8] zeroinitializer }, align 32
@j721e_soc_probe._entry_ptr.8 = internal global ptr @j721e_soc_probe._entry.6, section ".printk_index", align 4
@j721e_cpb_dapm_routes = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@j721e_soc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Card name is not provided\0A\00", [37 x i8] zeroinitializer }, align 32
@j721e_soc_probe._entry_ptr.12 = internal global ptr @j721e_soc_probe._entry.10, section ".printk_index", align 4
@j721e_soc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@j721e_soc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"devm_snd_soc_register_card() failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@j721e_soc_probe._entry_ptr.16 = internal global ptr @j721e_soc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CPB Stereo HP 1\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CPB Stereo HP 2\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CPB Stereo HP 3\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPB Line Out\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPB Stereo Mic 1\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPB Stereo Mic 2\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPB Line In\00", [20 x i8] zeroinitializer }, align 32
@j721e_cpb_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT1L\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT1R\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT2L\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT2R\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT3L\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT3R\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT4L\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-1 AOUT4R\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-1 AIN1L\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-1 AIN1R\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-1 AIN2L\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-1 AIN2R\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-1 AIN3L\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-1 AIN3R\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,cpb-mcasp\00", [19 x i8] zeroinitializer }, align 32
@j721e_soc_probe_cpb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 626, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CPB McASP node is not provided\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"j721e_soc_probe_cpb\00", [44 x i8] zeroinitializer }, align 32
@j721e_soc_probe_cpb._entry_ptr = internal global ptr @j721e_soc_probe_cpb._entry, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,cpb-codec\00", [19 x i8] zeroinitializer }, align 32
@j721e_soc_probe_cpb._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CPB codec node is not provided\0A\00", [32 x i8] zeroinitializer }, align 32
@j721e_soc_probe_cpb._entry_ptr.45 = internal global ptr @j721e_soc_probe_cpb._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpb-codec-scki\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpb-mcasp-auxclk\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPB PCM3168A Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CPB PCM3168A Analog\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcm3168a-dac\00", [19 x i8] zeroinitializer }, align 32
@j721e_audio_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @j721e_audio_startup, ptr @j721e_audio_shutdown, ptr @j721e_audio_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CPB PCM3168A Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcm3168a-adc\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"codec-1\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"McASP10\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to acquire %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-48000\00", [23 x i8] zeroinitializer }, align 32
@j721e_get_clocks.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_j721e_evm\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"j721e_get_clocks\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no 48KHz parent for %s: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-44100\00", [23 x i8] zeroinitializer }, align 32
@j721e_get_clocks.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.58, ptr @.str.3, ptr @.str.61, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no 44.1KHz parent for %s: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@j721e_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"At least one parent clock is needed for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@j721e_get_clocks._entry_ptr = internal global ptr @j721e_get_clocks._entry, section ".printk_index", align 4
@ratios_for_pcm3168a = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 512, i32 768], [20 x i8] zeroinitializer }, align 32
@j721e_configure_refclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No valid clock configuration for %u Hz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"j721e_configure_refclk\00", [41 x i8] zeroinitializer }, align 32
@j721e_configure_refclk._entry_ptr = internal global ptr @j721e_configure_refclk._entry, section ".printk_index", align 4
@j721e_configure_refclk.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"domain%u configuration for %u Hz: %s, %dxFS (SCKI: %u Hz)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL4\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PLL15\00", [26 x i8] zeroinitializer }, align 32
@j721e_configure_refclk._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"codec set rate failed for %u Hz\0A\00", [63 x i8] zeroinitializer }, align 32
@j721e_configure_refclk._entry_ptr.70 = internal global ptr @j721e_configure_refclk._entry.68, section ".printk_index", align 4
@j721e_configure_refclk._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mcasp set rate failed for %u Hz\0A\00", [63 x i8] zeroinitializer }, align 32
@j721e_configure_refclk._entry_ptr.73 = internal global ptr @j721e_configure_refclk._entry.71, section ".printk_index", align 4
@j721e_audio_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"codec set_sysclk failed for %u Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"j721e_audio_hw_params\00", [42 x i8] zeroinitializer }, align 32
@j721e_audio_hw_params._entry_ptr = internal global ptr @j721e_audio_hw_params._entry, section ".printk_index", align 4
@j721e_audio_hw_params._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mcasp set_sysclk failed for %u Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@j721e_audio_hw_params._entry_ptr.78 = internal global ptr @j721e_audio_hw_params._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,ivi-mcasp\00", [19 x i8] zeroinitializer }, align 32
@j721e_soc_probe_ivi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IVI McASP node is not provided\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"j721e_soc_probe_ivi\00", [44 x i8] zeroinitializer }, align 32
@j721e_soc_probe_ivi._entry_ptr = internal global ptr @j721e_soc_probe_ivi._entry, section ".printk_index", align 4
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,ivi-codec-a\00", [17 x i8] zeroinitializer }, align 32
@j721e_soc_probe_ivi._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IVI codec-a node is not provided\0A\00", [62 x i8] zeroinitializer }, align 32
@j721e_soc_probe_ivi._entry_ptr.85 = internal global ptr @j721e_soc_probe_ivi._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,ivi-codec-b\00", [17 x i8] zeroinitializer }, align 32
@j721e_soc_probe_ivi._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.81, ptr @.str.3, i32 734, ptr @.str.89, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IVI codec-b node is not provided\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@j721e_soc_probe_ivi._entry_ptr.90 = internal global ptr @j721e_soc_probe_ivi._entry.87, section ".printk_index", align 4
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivi-codec-scki\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivi-mcasp-auxclk\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IVI 2xPCM3168A Playback\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IVI 2xPCM3168A Analog\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IVI 2xPCM3168A Capture\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"codec-a\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"codec-b\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"McASP0\00", [25 x i8] zeroinitializer }, align 32
@j721e_codec_a_dapm_routes = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@j721e_codec_b_dapm_routes = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI A Line Out 1\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI A Line Out 2\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI A Line Out 3\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI A Line Out 4\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IVI A Stereo Mic 1\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IVI A Stereo Mic 2\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IVI A Line In\00", [18 x i8] zeroinitializer }, align 32
@j721e_ivi_codec_a_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT1L\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT1R\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT2L\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT2R\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT3L\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT3R\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT4L\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-a AOUT4R\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-a AIN1L\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-a AIN1R\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-a AIN2L\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-a AIN2R\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-a AIN3L\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-a AIN3R\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI B Line Out 1\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI B Line Out 2\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI B Line Out 3\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IVI B Line Out 4\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IVI B Stereo Mic 1\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IVI B Stereo Mic 2\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IVI B Line In\00", [18 x i8] zeroinitializer }, align 32
@j721e_ivi_codec_b_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT1L\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT1R\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT2L\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT2R\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT3L\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT3R\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT4L\00", [17 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec-b AOUT4R\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-b AIN1L\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-b AIN1R\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-b AIN2L\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-b AIN2R\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-b AIN3L\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec-b AIN3R\00", [18 x i8] zeroinitializer }, align 32
@j721e_calculate_rate_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"At least one PLL is needed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"j721e_calculate_rate_range\00", [37 x i8] zeroinitializer }, align 32
@j721e_calculate_rate_range._entry_ptr = internal global ptr @j721e_calculate_rate_range._entry, section ".printk_index", align 4
@j721e_cpb_data = internal constant { %struct.j721e_audio_match_data, [16 x i8] } { %struct.j721e_audio_match_data { i32 1, i32 2, [2 x i32] [i32 1179648000, i32 1083801600] }, [16 x i8] zeroinitializer }, align 32
@j721e_cpb_ivi_data = internal constant { %struct.j721e_audio_match_data, [16 x i8] } { %struct.j721e_audio_match_data { i32 2, i32 4, [2 x i32] [i32 1179648000, i32 1083801600] }, [16 x i8] zeroinitializer }, align 32
@j7200_cpb_data = internal constant { %struct.j721e_audio_match_data, [16 x i8] } { %struct.j721e_audio_match_data { i32 1, i32 2, [2 x i32] [i32 -1935671296, i32 0] }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"j721e_soc_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 900, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 902, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"j721e_audio_of_match\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 541, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 830, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 836, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"j721e_cpb_dapm_routes\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 99, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 864, i32 39 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 865, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 891, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 894, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 90, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 91, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 92, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 93, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 94, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 95, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 96, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [23 x i8] c"j721e_cpb_dapm_widgets\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 89, i32 41 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 100, i32 28 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 101, i32 28 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 102, i32 28 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 103, i32 28 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 104, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 105, i32 28 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 106, i32 25 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 107, i32 25 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 109, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 110, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 111, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 112, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 113, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 114, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 624, i32 36 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 626, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 630, i32 38 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 632, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 637, i32 52 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 641, i32 52 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 664, i32 36 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 665, i32 43 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 669, i32 48 }
@___asan_gen_.313 = private unnamed_addr constant [16 x i8] c"j721e_audio_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 395, i32 33 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 684, i32 36 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 689, i32 48 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 698, i32 44 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 701, i32 44 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 469, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 471, i32 35 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 480, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 488, i32 35 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 497, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 507, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c"ratios_for_pcm3168a\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 53, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 198, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 204, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 226, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 235, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 354, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 365, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 720, i32 36 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 722, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 726, i32 39 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 728, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 732, i32 39 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 734, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 739, i32 52 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 743, i32 52 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 769, i32 36 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 770, i32 43 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 791, i32 36 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 807, i32 44 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 811, i32 44 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 815, i32 44 }
@___asan_gen_.460 = private unnamed_addr constant [26 x i8] c"j721e_codec_a_dapm_routes\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 127, i32 40 }
@___asan_gen_.463 = private unnamed_addr constant [26 x i8] c"j721e_codec_b_dapm_routes\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 155, i32 40 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 118, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 119, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 120, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 121, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 122, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 123, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 124, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [31 x i8] c"j721e_ivi_codec_a_dapm_widgets\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 117, i32 41 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 128, i32 29 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 129, i32 29 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 130, i32 29 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 131, i32 29 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 132, i32 29 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 133, i32 29 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 134, i32 29 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 135, i32 29 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 137, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 138, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 139, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 140, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 141, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 142, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 146, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 147, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 148, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 149, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 150, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 151, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 152, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [31 x i8] c"j721e_ivi_codec_b_dapm_widgets\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 145, i32 41 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 156, i32 29 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 157, i32 29 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 158, i32 29 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 159, i32 29 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 160, i32 29 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 161, i32 29 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 162, i32 29 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 163, i32 29 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 165, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 166, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 167, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 168, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 169, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 170, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 585, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant [15 x i8] c"j721e_cpb_data\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 515, i32 44 }
@___asan_gen_.610 = private unnamed_addr constant [19 x i8] c"j721e_cpb_ivi_data\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 524, i32 44 }
@___asan_gen_.613 = private unnamed_addr constant [15 x i8] c"j7200_cpb_data\00", align 1
@___asan_gen_.614 = private constant [28 x i8] c"../sound/soc/ti/j721e-evm.c\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 533, i32 44 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_j721e_soc_driver_exit, ptr @__initcall__kmod_snd_soc_j721e_evm__241_909_j721e_soc_driver_init6, ptr @j721e_audio_hw_params._entry, ptr @j721e_audio_hw_params._entry.76, ptr @j721e_audio_hw_params._entry_ptr, ptr @j721e_audio_hw_params._entry_ptr.78, ptr @j721e_calculate_rate_range._entry, ptr @j721e_calculate_rate_range._entry_ptr, ptr @j721e_configure_refclk._entry, ptr @j721e_configure_refclk._entry.68, ptr @j721e_configure_refclk._entry.71, ptr @j721e_configure_refclk._entry_ptr, ptr @j721e_configure_refclk._entry_ptr.70, ptr @j721e_configure_refclk._entry_ptr.73, ptr @j721e_get_clocks._entry, ptr @j721e_get_clocks._entry_ptr, ptr @j721e_soc_driver_exit, ptr @j721e_soc_probe._entry, ptr @j721e_soc_probe._entry.10, ptr @j721e_soc_probe._entry.14, ptr @j721e_soc_probe._entry.6, ptr @j721e_soc_probe._entry_ptr, ptr @j721e_soc_probe._entry_ptr.12, ptr @j721e_soc_probe._entry_ptr.16, ptr @j721e_soc_probe._entry_ptr.8, ptr @j721e_soc_probe_cpb._entry, ptr @j721e_soc_probe_cpb._entry.43, ptr @j721e_soc_probe_cpb._entry_ptr, ptr @j721e_soc_probe_cpb._entry_ptr.45, ptr @j721e_soc_probe_ivi._entry, ptr @j721e_soc_probe_ivi._entry.83, ptr @j721e_soc_probe_ivi._entry.87, ptr @j721e_soc_probe_ivi._entry_ptr, ptr @j721e_soc_probe_ivi._entry_ptr.85, ptr @j721e_soc_probe_ivi._entry_ptr.90, ptr @j721e_soc_driver, ptr @.str, ptr @j721e_audio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @j721e_cpb_dapm_routes, ptr @.str.9, ptr @.str.11, ptr @j721e_soc_probe.__key, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @j721e_cpb_dapm_widgets, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @j721e_audio_ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @ratios_for_pcm3168a, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @j721e_codec_a_dapm_routes, ptr @j721e_codec_b_dapm_routes, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @j721e_ivi_codec_a_dapm_widgets, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @j721e_ivi_codec_b_dapm_widgets, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @j721e_cpb_data, ptr @j721e_cpb_ivi_data, ptr @j7200_cpb_data], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_audio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_cpb_dapm_routes to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_cpb_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe_cpb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe_cpb._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_audio_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratios_for_pcm3168a to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_configure_refclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_configure_refclk._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_configure_refclk._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_audio_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_audio_hw_params._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe_ivi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe_ivi._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_soc_probe_ivi._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_codec_a_dapm_routes to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_codec_b_dapm_routes to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_ivi_codec_a_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_ivi_codec_b_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_calculate_rate_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_cpb_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_cpb_ivi_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j7200_cpb_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_soc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @j721e_soc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @j721e_soc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @j721e_soc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_soc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i330.i = alloca %struct.of_phandle_args, align 4
  %args.i324.i = alloca %struct.of_phandle_args, align 4
  %args.i.i116 = alloca %struct.of_phandle_args, align 4
  %args.i263.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @j721e_audio_of_match, ptr noundef nonnull %1) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 940, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %match_data = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %match_data, align 4
  %num_links = getelementptr inbounds %struct.j721e_audio_match_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_links, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 116) #6
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !315

devm_kcalloc.exit.thread:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dai_links243 = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %dai_links243 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dai_links243, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end13
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #6
  %dai_links = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %dai_links to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %dai_links, align 4
  %tobool18.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool18.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.body.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %devm_kcalloc.exit
  %parent_clk_id = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %12 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %parent_clk_id, align 4
  %parent_clk_id.1 = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 1, i32 2
  %13 = ptrtoint ptr %parent_clk_id.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %parent_clk_id.1, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i, align 4
  %card23 = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1
  %dev25 = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev25, align 4
  %owner = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %owner, align 4
  %dapm_widgets = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 35
  %17 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @j721e_cpb_dapm_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 36
  %18 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %num_dapm_widgets, align 4
  %dapm_routes = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 37
  %19 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @j721e_cpb_dapm_routes, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 38
  %20 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %num_dapm_routes, align 4
  %fully_routed = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 56
  %21 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call26 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef %card23, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end33:                                         ; preds = %for.body.preheader
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %26 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %25, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end33
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i263.i) #6
  %31 = call ptr @memset(ptr %args.i263.i, i32 255, i32 72)
  %call.i264.i = call i32 @__of_parse_phandle_with_args(ptr noundef %25, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i263.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264.i)
  %tobool.not.i265.i = icmp eq i32 %call.i264.i, 0
  br i1 %tobool.not.i265.i, label %of_parse_phandle.exit268.i, label %of_parse_phandle.exit268.thread.i

of_parse_phandle.exit268.thread.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i263.i) #6
  br label %do.end7.i

of_parse_phandle.exit268.i:                       ; preds = %if.end.i
  %32 = ptrtoint ptr %args.i263.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %args.i263.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i263.i) #6
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %of_parse_phandle.exit268.i.do.end7.i_crit_edge, label %if.end9.i

of_parse_phandle.exit268.i.do.end7.i_crit_edge:   ; preds = %of_parse_phandle.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %of_parse_phandle.exit268.i.do.end7.i_crit_edge, %of_parse_phandle.exit268.thread.i
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end9.i:                                        ; preds = %of_parse_phandle.exit268.i
  %audio_domains.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call11.i = call fastcc i32 @j721e_get_clocks(ptr noundef %37, ptr noundef %audio_domains.i, ptr noundef nonnull @.str.46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %mcasp.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %call16.i = call fastcc i32 @j721e_get_clocks(ptr noundef %39, ptr noundef %mcasp.i, ptr noundef nonnull @.str.47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.end14.i
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %call.i269.i = call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 72, i32 noundef 3520) #6
  %tobool22.not.i = icmp eq ptr %call.i269.i, null
  br i1 %tobool22.not.i, label %if.end19.i.cleanup_crit_edge, label %if.end37

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end19.i
  %42 = ptrtoint ptr %dai_links to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dai_links, align 4
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i269.i, ptr %cpus.i, align 4
  %45 = load ptr, ptr %dai_links, align 4
  %num_cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %num_cpus.i, align 4
  %arrayidx30.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i269.i, i32 1
  %47 = load ptr, ptr %dai_links, align 4
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %codecs.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx30.i, ptr %codecs.i, align 4
  %49 = load ptr, ptr %dai_links, align 4
  %num_codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %num_codecs.i, align 4
  %arrayidx36.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i269.i, i32 2
  %51 = load ptr, ptr %dai_links, align 4
  %platforms.i = getelementptr %struct.snd_soc_dai_link, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %platforms.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx36.i, ptr %platforms.i, align 4
  %53 = load ptr, ptr %dai_links, align 4
  %num_platforms.i = getelementptr %struct.snd_soc_dai_link, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %num_platforms.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_platforms.i, align 4
  %55 = load ptr, ptr %dai_links, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.48, ptr %55, align 4
  %57 = load ptr, ptr %dai_links, align 4
  %stream_name.i = getelementptr %struct.snd_soc_dai_link, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %stream_name.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.49, ptr %stream_name.i, align 4
  %59 = load ptr, ptr %dai_links, align 4
  %cpus47.i = getelementptr %struct.snd_soc_dai_link, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %cpus47.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cpus47.i, align 4
  %of_node48.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %of_node48.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %28, ptr %of_node48.i, align 4
  %63 = load ptr, ptr %dai_links, align 4
  %platforms51.i = getelementptr %struct.snd_soc_dai_link, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %platforms51.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %platforms51.i, align 4
  %of_node52.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %of_node52.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %28, ptr %of_node52.i, align 4
  %67 = load ptr, ptr %dai_links, align 4
  %codecs55.i = getelementptr %struct.snd_soc_dai_link, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %codecs55.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %codecs55.i, align 4
  %of_node56.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %of_node56.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %33, ptr %of_node56.i, align 4
  %71 = load ptr, ptr %dai_links, align 4
  %codecs59.i = getelementptr %struct.snd_soc_dai_link, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %codecs59.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %codecs59.i, align 4
  %dai_name.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dai_name.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.50, ptr %dai_name.i, align 4
  %75 = load ptr, ptr %dai_links, align 4
  %playback_only.i = getelementptr %struct.snd_soc_dai_link, ptr %75, i32 0, i32 18
  %76 = ptrtoint ptr %playback_only.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load.i = load i32, ptr %playback_only.i, align 4
  %bf.set.i = or i32 %bf.load.i, 1073741824
  store i32 %bf.set.i, ptr %playback_only.i, align 4
  %77 = load ptr, ptr %dai_links, align 4
  %id.i = getelementptr %struct.snd_soc_dai_link, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %id.i, align 4
  %79 = load ptr, ptr %dai_links, align 4
  %dai_fmt.i = getelementptr %struct.snd_soc_dai_link, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 16386, ptr %dai_fmt.i, align 4
  %81 = load ptr, ptr %dai_links, align 4
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @j721e_audio_init, ptr %init.i, align 4
  %83 = load ptr, ptr %dai_links, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @j721e_audio_ops, ptr %ops.i, align 4
  %arrayidx72.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i269.i, i32 3
  %85 = load ptr, ptr %dai_links, align 4
  %cpus75.i = getelementptr %struct.snd_soc_dai_link, ptr %85, i32 1, i32 2
  %86 = ptrtoint ptr %cpus75.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx72.i, ptr %cpus75.i, align 4
  %87 = load ptr, ptr %dai_links, align 4
  %num_cpus78.i = getelementptr %struct.snd_soc_dai_link, ptr %87, i32 1, i32 3
  %88 = ptrtoint ptr %num_cpus78.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %num_cpus78.i, align 4
  %arrayidx80.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i269.i, i32 4
  %89 = load ptr, ptr %dai_links, align 4
  %codecs83.i = getelementptr %struct.snd_soc_dai_link, ptr %89, i32 1, i32 4
  %90 = ptrtoint ptr %codecs83.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx80.i, ptr %codecs83.i, align 4
  %91 = load ptr, ptr %dai_links, align 4
  %num_codecs86.i = getelementptr %struct.snd_soc_dai_link, ptr %91, i32 1, i32 5
  %92 = ptrtoint ptr %num_codecs86.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %num_codecs86.i, align 4
  %arrayidx88.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i269.i, i32 5
  %93 = load ptr, ptr %dai_links, align 4
  %platforms91.i = getelementptr %struct.snd_soc_dai_link, ptr %93, i32 1, i32 6
  %94 = ptrtoint ptr %platforms91.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx88.i, ptr %platforms91.i, align 4
  %95 = load ptr, ptr %dai_links, align 4
  %num_platforms94.i = getelementptr %struct.snd_soc_dai_link, ptr %95, i32 1, i32 7
  %96 = ptrtoint ptr %num_platforms94.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %num_platforms94.i, align 4
  %97 = load ptr, ptr %dai_links, align 4
  %arrayidx96.i = getelementptr %struct.snd_soc_dai_link, ptr %97, i32 1
  %98 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.51, ptr %arrayidx96.i, align 4
  %99 = load ptr, ptr %dai_links, align 4
  %stream_name100.i = getelementptr %struct.snd_soc_dai_link, ptr %99, i32 1, i32 1
  %100 = ptrtoint ptr %stream_name100.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.49, ptr %stream_name100.i, align 4
  %101 = load ptr, ptr %dai_links, align 4
  %cpus103.i = getelementptr %struct.snd_soc_dai_link, ptr %101, i32 1, i32 2
  %102 = ptrtoint ptr %cpus103.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cpus103.i, align 4
  %of_node104.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %of_node104.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %28, ptr %of_node104.i, align 4
  %105 = load ptr, ptr %dai_links, align 4
  %platforms107.i = getelementptr %struct.snd_soc_dai_link, ptr %105, i32 1, i32 6
  %106 = ptrtoint ptr %platforms107.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %platforms107.i, align 4
  %of_node108.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %of_node108.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %28, ptr %of_node108.i, align 4
  %109 = load ptr, ptr %dai_links, align 4
  %codecs111.i = getelementptr %struct.snd_soc_dai_link, ptr %109, i32 1, i32 4
  %110 = ptrtoint ptr %codecs111.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %codecs111.i, align 4
  %of_node112.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %of_node112.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %33, ptr %of_node112.i, align 4
  %113 = load ptr, ptr %dai_links, align 4
  %codecs115.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 1, i32 4
  %114 = ptrtoint ptr %codecs115.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %codecs115.i, align 4
  %dai_name116.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %dai_name116.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.52, ptr %dai_name116.i, align 4
  %117 = load ptr, ptr %dai_links, align 4
  %capture_only.i = getelementptr %struct.snd_soc_dai_link, ptr %117, i32 1, i32 18
  %118 = ptrtoint ptr %capture_only.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load119.i = load i32, ptr %capture_only.i, align 4
  %bf.set121.i = or i32 %bf.load119.i, 536870912
  store i32 %bf.set121.i, ptr %capture_only.i, align 4
  %119 = load ptr, ptr %dai_links, align 4
  %id124.i = getelementptr %struct.snd_soc_dai_link, ptr %119, i32 1, i32 8
  %120 = ptrtoint ptr %id124.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %id124.i, align 4
  %121 = load ptr, ptr %dai_links, align 4
  %dai_fmt127.i = getelementptr %struct.snd_soc_dai_link, ptr %121, i32 1, i32 11
  %122 = ptrtoint ptr %dai_fmt127.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 16386, ptr %dai_fmt127.i, align 4
  %123 = load ptr, ptr %dai_links, align 4
  %init130.i = getelementptr %struct.snd_soc_dai_link, ptr %123, i32 1, i32 13
  %124 = ptrtoint ptr %init130.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @j721e_audio_init, ptr %init130.i, align 4
  %125 = load ptr, ptr %dai_links, align 4
  %ops133.i = getelementptr %struct.snd_soc_dai_link, ptr %125, i32 1, i32 16
  %126 = ptrtoint ptr %ops133.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @j721e_audio_ops, ptr %ops133.i, align 4
  %of_node136.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %127 = ptrtoint ptr %of_node136.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %33, ptr %of_node136.i, align 4
  %name_prefix.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %128 = ptrtoint ptr %name_prefix.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.53, ptr %name_prefix.i, align 4
  %of_node143.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %129 = ptrtoint ptr %of_node143.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %28, ptr %of_node143.i, align 4
  %name_prefix146.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %130 = ptrtoint ptr %name_prefix146.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.54, ptr %name_prefix146.i, align 4
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i, align 4
  %of_node.i117 = getelementptr inbounds %struct.device, ptr %132, i32 0, i32 27
  %133 = ptrtoint ptr %of_node.i117 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %of_node.i117, align 8
  %135 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %match_data, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %cmp.not.i = icmp eq i32 %138, 2
  br i1 %cmp.not.i, label %if.end.i120, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end.i120:                                      ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i116) #6
  %139 = call ptr @memset(ptr %args.i.i116, i32 255, i32 72)
  %call.i.i118 = call i32 @__of_parse_phandle_with_args(ptr noundef %134, ptr noundef nonnull @.str.79, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %call.i.i118, 0
  br i1 %tobool.not.i.i119, label %of_parse_phandle.exit.i123, label %of_parse_phandle.exit.thread.i121

of_parse_phandle.exit.thread.i121:                ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i116) #6
  br label %do.end.i124

of_parse_phandle.exit.i123:                       ; preds = %if.end.i120
  %140 = ptrtoint ptr %args.i.i116 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %args.i.i116, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i116) #6
  %tobool.not.i122 = icmp eq ptr %141, null
  br i1 %tobool.not.i122, label %of_parse_phandle.exit.i123.do.end.i124_crit_edge, label %if.end3.i

of_parse_phandle.exit.i123.do.end.i124_crit_edge: ; preds = %of_parse_phandle.exit.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i124

do.end.i124:                                      ; preds = %of_parse_phandle.exit.i123.do.end.i124_crit_edge, %of_parse_phandle.exit.thread.i121
  %142 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.80) #9
  br label %cleanup

if.end3.i:                                        ; preds = %of_parse_phandle.exit.i123
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i324.i) #6
  %144 = call ptr @memset(ptr %args.i324.i, i32 255, i32 72)
  %call.i325.i = call i32 @__of_parse_phandle_with_args(ptr noundef %134, ptr noundef nonnull @.str.82, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i324.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325.i)
  %tobool.not.i326.i = icmp eq i32 %call.i325.i, 0
  br i1 %tobool.not.i326.i, label %of_parse_phandle.exit329.i, label %of_parse_phandle.exit329.thread.i

of_parse_phandle.exit329.thread.i:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i324.i) #6
  br label %do.end9.i

of_parse_phandle.exit329.i:                       ; preds = %if.end3.i
  %145 = ptrtoint ptr %args.i324.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %args.i324.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i324.i) #6
  %tobool5.not.i = icmp eq ptr %146, null
  br i1 %tobool5.not.i, label %of_parse_phandle.exit329.i.do.end9.i_crit_edge, label %if.end11.i

of_parse_phandle.exit329.i.do.end9.i_crit_edge:   ; preds = %of_parse_phandle.exit329.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %of_parse_phandle.exit329.i.do.end9.i_crit_edge, %of_parse_phandle.exit329.thread.i
  %147 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.84) #9
  br label %cleanup

if.end11.i:                                       ; preds = %of_parse_phandle.exit329.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i330.i) #6
  %149 = call ptr @memset(ptr %args.i330.i, i32 255, i32 72)
  %call.i331.i = call i32 @__of_parse_phandle_with_args(ptr noundef %134, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i330.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331.i)
  %tobool.not.i332.i = icmp eq i32 %call.i331.i, 0
  br i1 %tobool.not.i332.i, label %of_parse_phandle.exit335.i, label %of_parse_phandle.exit335.thread.i

of_parse_phandle.exit335.thread.i:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i330.i) #6
  br label %do.end17.i

of_parse_phandle.exit335.i:                       ; preds = %if.end11.i
  %150 = ptrtoint ptr %args.i330.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %args.i330.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i330.i) #6
  %tobool13.not.i = icmp eq ptr %151, null
  br i1 %tobool13.not.i, label %of_parse_phandle.exit335.i.do.end17.i_crit_edge, label %if.end19.i126

of_parse_phandle.exit335.i.do.end17.i_crit_edge:  ; preds = %of_parse_phandle.exit335.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i

do.end17.i:                                       ; preds = %of_parse_phandle.exit335.i.do.end17.i_crit_edge, %of_parse_phandle.exit335.thread.i
  %152 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %153, ptr noundef nonnull @.str.88) #9
  br label %if.end41

if.end19.i126:                                    ; preds = %of_parse_phandle.exit335.i
  %arrayidx.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 1
  %154 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call.i, align 4
  %call21.i = call fastcc i32 @j721e_get_clocks(ptr noundef %155, ptr noundef %arrayidx.i, ptr noundef nonnull @.str.91) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i125 = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i125, label %if.end24.i128, label %if.end19.i126.cleanup_crit_edge

if.end19.i126.cleanup_crit_edge:                  ; preds = %if.end19.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.i128:                                    ; preds = %if.end19.i126
  %156 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call.i, align 4
  %mcasp.i127 = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %call26.i = call fastcc i32 @j721e_get_clocks(ptr noundef %157, ptr noundef %mcasp.i127, ptr noundef nonnull @.str.92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i128.cleanup_crit_edge

if.end24.i128.cleanup_crit_edge:                  ; preds = %if.end24.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29.i:                                       ; preds = %if.end24.i128
  %158 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call.i, align 4
  %call.i336.i = call noalias ptr @devm_kmalloc(ptr noundef %159, i32 noundef 96, i32 noundef 3520) #6
  %tobool32.not.i = icmp eq ptr %call.i336.i, null
  br i1 %tobool32.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end34.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %dai_links to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dai_links, align 4
  %cpus.i130 = getelementptr %struct.snd_soc_dai_link, ptr %161, i32 2, i32 2
  %162 = ptrtoint ptr %cpus.i130 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i336.i, ptr %cpus.i130, align 4
  %163 = load ptr, ptr %dai_links, align 4
  %num_cpus.i131 = getelementptr %struct.snd_soc_dai_link, ptr %163, i32 2, i32 3
  %164 = ptrtoint ptr %num_cpus.i131 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1, ptr %num_cpus.i131, align 4
  %arrayidx40.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i336.i, i32 1
  %165 = load ptr, ptr %dai_links, align 4
  %platforms.i132 = getelementptr %struct.snd_soc_dai_link, ptr %165, i32 2, i32 6
  %166 = ptrtoint ptr %platforms.i132 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %arrayidx40.i, ptr %platforms.i132, align 4
  %167 = load ptr, ptr %dai_links, align 4
  %num_platforms.i133 = getelementptr %struct.snd_soc_dai_link, ptr %167, i32 2, i32 7
  %168 = ptrtoint ptr %num_platforms.i133 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %num_platforms.i133, align 4
  %arrayidx45.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i336.i, i32 2
  %169 = load ptr, ptr %dai_links, align 4
  %codecs.i134 = getelementptr %struct.snd_soc_dai_link, ptr %169, i32 2, i32 4
  %170 = ptrtoint ptr %codecs.i134 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %arrayidx45.i, ptr %codecs.i134, align 4
  %171 = load ptr, ptr %dai_links, align 4
  %num_codecs.i135 = getelementptr %struct.snd_soc_dai_link, ptr %171, i32 2, i32 5
  %172 = ptrtoint ptr %num_codecs.i135 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 2, ptr %num_codecs.i135, align 4
  %173 = load ptr, ptr %dai_links, align 4
  %arrayidx51.i = getelementptr %struct.snd_soc_dai_link, ptr %173, i32 2
  %174 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.93, ptr %arrayidx51.i, align 4
  %175 = load ptr, ptr %dai_links, align 4
  %stream_name.i136 = getelementptr %struct.snd_soc_dai_link, ptr %175, i32 2, i32 1
  %176 = ptrtoint ptr %stream_name.i136 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.94, ptr %stream_name.i136, align 4
  %177 = load ptr, ptr %dai_links, align 4
  %cpus56.i = getelementptr %struct.snd_soc_dai_link, ptr %177, i32 2, i32 2
  %178 = ptrtoint ptr %cpus56.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cpus56.i, align 4
  %of_node57.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %of_node57.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %141, ptr %of_node57.i, align 4
  %181 = load ptr, ptr %dai_links, align 4
  %platforms60.i = getelementptr %struct.snd_soc_dai_link, ptr %181, i32 2, i32 6
  %182 = ptrtoint ptr %platforms60.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %platforms60.i, align 4
  %of_node61.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %of_node61.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %141, ptr %of_node61.i, align 4
  %185 = load ptr, ptr %dai_links, align 4
  %codecs64.i = getelementptr %struct.snd_soc_dai_link, ptr %185, i32 2, i32 4
  %186 = ptrtoint ptr %codecs64.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %codecs64.i, align 4
  %of_node66.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %of_node66.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %146, ptr %of_node66.i, align 4
  %189 = load ptr, ptr %dai_links, align 4
  %codecs69.i = getelementptr %struct.snd_soc_dai_link, ptr %189, i32 2, i32 4
  %190 = ptrtoint ptr %codecs69.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %codecs69.i, align 4
  %dai_name.i137 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %dai_name.i137 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.50, ptr %dai_name.i137, align 4
  %193 = load ptr, ptr %dai_links, align 4
  %codecs73.i = getelementptr %struct.snd_soc_dai_link, ptr %193, i32 2, i32 4
  %194 = ptrtoint ptr %codecs73.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %codecs73.i, align 4
  %of_node75.i = getelementptr %struct.snd_soc_dai_link_component, ptr %195, i32 1, i32 1
  %196 = ptrtoint ptr %of_node75.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %151, ptr %of_node75.i, align 4
  %197 = load ptr, ptr %dai_links, align 4
  %codecs78.i = getelementptr %struct.snd_soc_dai_link, ptr %197, i32 2, i32 4
  %198 = ptrtoint ptr %codecs78.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %codecs78.i, align 4
  %dai_name80.i = getelementptr %struct.snd_soc_dai_link_component, ptr %199, i32 1, i32 2
  %200 = ptrtoint ptr %dai_name80.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @.str.50, ptr %dai_name80.i, align 4
  %201 = load ptr, ptr %dai_links, align 4
  %playback_only.i138 = getelementptr %struct.snd_soc_dai_link, ptr %201, i32 2, i32 18
  %202 = ptrtoint ptr %playback_only.i138 to i32
  call void @__asan_load4_noabort(i32 %202)
  %bf.load.i139 = load i32, ptr %playback_only.i138, align 4
  %bf.set.i140 = or i32 %bf.load.i139, 1073741824
  store i32 %bf.set.i140, ptr %playback_only.i138, align 4
  %203 = load ptr, ptr %dai_links, align 4
  %id.i141 = getelementptr %struct.snd_soc_dai_link, ptr %203, i32 2, i32 8
  %204 = ptrtoint ptr %id.i141 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1, ptr %id.i141, align 4
  %205 = load ptr, ptr %dai_links, align 4
  %dai_fmt.i142 = getelementptr %struct.snd_soc_dai_link, ptr %205, i32 2, i32 11
  %206 = ptrtoint ptr %dai_fmt.i142 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 16386, ptr %dai_fmt.i142, align 4
  %207 = load ptr, ptr %dai_links, align 4
  %init.i143 = getelementptr %struct.snd_soc_dai_link, ptr %207, i32 2, i32 13
  %208 = ptrtoint ptr %init.i143 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @j721e_audio_init_ivi, ptr %init.i143, align 4
  %209 = load ptr, ptr %dai_links, align 4
  %ops.i144 = getelementptr %struct.snd_soc_dai_link, ptr %209, i32 2, i32 16
  %210 = ptrtoint ptr %ops.i144 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @j721e_audio_ops, ptr %ops.i144, align 4
  %arrayidx93.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i336.i, i32 4
  %211 = load ptr, ptr %dai_links, align 4
  %cpus96.i = getelementptr %struct.snd_soc_dai_link, ptr %211, i32 3, i32 2
  %212 = ptrtoint ptr %cpus96.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %arrayidx93.i, ptr %cpus96.i, align 4
  %213 = load ptr, ptr %dai_links, align 4
  %num_cpus99.i = getelementptr %struct.snd_soc_dai_link, ptr %213, i32 3, i32 3
  %214 = ptrtoint ptr %num_cpus99.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %num_cpus99.i, align 4
  %arrayidx101.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i336.i, i32 5
  %215 = load ptr, ptr %dai_links, align 4
  %platforms104.i = getelementptr %struct.snd_soc_dai_link, ptr %215, i32 3, i32 6
  %216 = ptrtoint ptr %platforms104.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %arrayidx101.i, ptr %platforms104.i, align 4
  %217 = load ptr, ptr %dai_links, align 4
  %num_platforms107.i = getelementptr %struct.snd_soc_dai_link, ptr %217, i32 3, i32 7
  %218 = ptrtoint ptr %num_platforms107.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1, ptr %num_platforms107.i, align 4
  %arrayidx108.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i336.i, i32 6
  %219 = load ptr, ptr %dai_links, align 4
  %codecs111.i145 = getelementptr %struct.snd_soc_dai_link, ptr %219, i32 3, i32 4
  %220 = ptrtoint ptr %codecs111.i145 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %arrayidx108.i, ptr %codecs111.i145, align 4
  %221 = load ptr, ptr %dai_links, align 4
  %num_codecs114.i = getelementptr %struct.snd_soc_dai_link, ptr %221, i32 3, i32 5
  %222 = ptrtoint ptr %num_codecs114.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 2, ptr %num_codecs114.i, align 4
  %223 = load ptr, ptr %dai_links, align 4
  %arrayidx116.i = getelementptr %struct.snd_soc_dai_link, ptr %223, i32 3
  %224 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @.str.95, ptr %arrayidx116.i, align 4
  %225 = load ptr, ptr %dai_links, align 4
  %stream_name120.i = getelementptr %struct.snd_soc_dai_link, ptr %225, i32 3, i32 1
  %226 = ptrtoint ptr %stream_name120.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @.str.94, ptr %stream_name120.i, align 4
  %227 = load ptr, ptr %dai_links, align 4
  %cpus123.i = getelementptr %struct.snd_soc_dai_link, ptr %227, i32 3, i32 2
  %228 = ptrtoint ptr %cpus123.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cpus123.i, align 4
  %of_node124.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %of_node124.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %141, ptr %of_node124.i, align 4
  %231 = load ptr, ptr %dai_links, align 4
  %platforms127.i = getelementptr %struct.snd_soc_dai_link, ptr %231, i32 3, i32 6
  %232 = ptrtoint ptr %platforms127.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %platforms127.i, align 4
  %of_node128.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %of_node128.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %141, ptr %of_node128.i, align 4
  %235 = load ptr, ptr %dai_links, align 4
  %codecs131.i = getelementptr %struct.snd_soc_dai_link, ptr %235, i32 3, i32 4
  %236 = ptrtoint ptr %codecs131.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %codecs131.i, align 4
  %of_node133.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %of_node133.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %146, ptr %of_node133.i, align 4
  %239 = load ptr, ptr %dai_links, align 4
  %codecs136.i = getelementptr %struct.snd_soc_dai_link, ptr %239, i32 3, i32 4
  %240 = ptrtoint ptr %codecs136.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %codecs136.i, align 4
  %dai_name138.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %dai_name138.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @.str.52, ptr %dai_name138.i, align 4
  %243 = load ptr, ptr %dai_links, align 4
  %codecs141.i = getelementptr %struct.snd_soc_dai_link, ptr %243, i32 3, i32 4
  %244 = ptrtoint ptr %codecs141.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %codecs141.i, align 4
  %of_node143.i146 = getelementptr %struct.snd_soc_dai_link_component, ptr %245, i32 1, i32 1
  %246 = ptrtoint ptr %of_node143.i146 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %151, ptr %of_node143.i146, align 4
  %247 = load ptr, ptr %dai_links, align 4
  %codecs146.i = getelementptr %struct.snd_soc_dai_link, ptr %247, i32 3, i32 4
  %248 = ptrtoint ptr %codecs146.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %codecs146.i, align 4
  %dai_name148.i = getelementptr %struct.snd_soc_dai_link_component, ptr %249, i32 1, i32 2
  %250 = ptrtoint ptr %dai_name148.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @.str.52, ptr %dai_name148.i, align 4
  %251 = load ptr, ptr %dai_links, align 4
  %capture_only.i147 = getelementptr %struct.snd_soc_dai_link, ptr %251, i32 3, i32 18
  %252 = ptrtoint ptr %capture_only.i147 to i32
  call void @__asan_load4_noabort(i32 %252)
  %bf.load151.i = load i32, ptr %capture_only.i147, align 4
  %bf.set153.i = or i32 %bf.load151.i, 536870912
  store i32 %bf.set153.i, ptr %capture_only.i147, align 4
  %253 = load ptr, ptr %dai_links, align 4
  %id156.i = getelementptr %struct.snd_soc_dai_link, ptr %253, i32 3, i32 8
  %254 = ptrtoint ptr %id156.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 1, ptr %id156.i, align 4
  %255 = load ptr, ptr %dai_links, align 4
  %dai_fmt159.i = getelementptr %struct.snd_soc_dai_link, ptr %255, i32 3, i32 11
  %256 = ptrtoint ptr %dai_fmt159.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 16386, ptr %dai_fmt159.i, align 4
  %257 = load ptr, ptr %dai_links, align 4
  %init162.i = getelementptr %struct.snd_soc_dai_link, ptr %257, i32 3, i32 13
  %258 = ptrtoint ptr %init162.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @j721e_audio_init, ptr %init162.i, align 4
  %259 = load ptr, ptr %dai_links, align 4
  %ops165.i = getelementptr %struct.snd_soc_dai_link, ptr %259, i32 3, i32 16
  %260 = ptrtoint ptr %ops165.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @j721e_audio_ops, ptr %ops165.i, align 4
  %of_node168.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %261 = ptrtoint ptr %of_node168.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %146, ptr %of_node168.i, align 4
  %name_prefix.i148 = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %262 = ptrtoint ptr %name_prefix.i148 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @.str.96, ptr %name_prefix.i148, align 4
  %of_node175.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 3, i32 0, i32 1
  %263 = ptrtoint ptr %of_node175.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %151, ptr %of_node175.i, align 4
  %name_prefix178.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %264 = ptrtoint ptr %name_prefix178.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.97, ptr %name_prefix178.i, align 4
  %of_node183.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 4, i32 0, i32 1
  %265 = ptrtoint ptr %of_node183.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %141, ptr %of_node183.i, align 4
  %name_prefix186.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 3, i32 4, i32 1
  %266 = ptrtoint ptr %name_prefix186.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr @.str.98, ptr %name_prefix186.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end34.i, %do.end17.i, %if.end37.if.end41_crit_edge
  %link_cnt.1 = phi i32 [ 2, %do.end17.i ], [ 4, %if.end34.i ], [ 2, %if.end37.if.end41_crit_edge ]
  %conf_cnt.1 = phi i32 [ 2, %do.end17.i ], [ 5, %if.end34.i ], [ 2, %if.end37.if.end41_crit_edge ]
  %267 = ptrtoint ptr %dai_links to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dai_links, align 4
  %dai_link = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 24
  %269 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %268, ptr %dai_link, align 4
  %num_links43 = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 25
  %270 = ptrtoint ptr %num_links43 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %link_cnt.1, ptr %num_links43, align 4
  %codec_conf = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 3
  %codec_conf44 = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 28
  %271 = ptrtoint ptr %codec_conf44 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %codec_conf, ptr %codec_conf44, align 4
  %num_configs = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 29
  %272 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %conf_cnt.1, ptr %num_configs, align 4
  %273 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %match_data, align 4
  %parent.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %arrayidx2.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1, i32 1
  %275 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx2.i, align 4
  %call.i150 = call ptr @clk_get_parent(ptr noundef %276) #6
  %tobool.not.i.i151 = icmp eq ptr %call.i150, null
  %cmp.i.i = icmp ugt ptr %call.i150, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i151, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4.i = getelementptr %struct.j721e_audio_match_data, ptr %274, i32 0, i32 2, i32 1
  %277 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 6, i32 1
  %279 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %arrayidx6.i, align 4
  br label %if.end.i152

if.else.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 @clk_get_rate(ptr noundef nonnull %call.i150) #6
  %arrayidx9.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 6, i32 1
  %280 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call7.i, ptr %arrayidx9.i, align 4
  call void @clk_put(ptr noundef nonnull %call.i150) #6
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.else.i, %if.then.i
  %281 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %parent.i, align 4
  %call12.i = call ptr @clk_get_parent(ptr noundef %282) #6
  %tobool.not.i92.i = icmp eq ptr %call12.i, null
  %cmp.i93.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i94.i = or i1 %tobool.not.i92.i, %cmp.i93.i
  br i1 %spec.select.i94.i, label %if.then14.i, label %if.else19.i

if.then14.i:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #8
  %pll_rates15.i = getelementptr inbounds %struct.j721e_audio_match_data, ptr %274, i32 0, i32 2
  %283 = ptrtoint ptr %pll_rates15.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %pll_rates15.i, align 4
  %pll_rates17.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 6
  %285 = ptrtoint ptr %pll_rates17.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %pll_rates17.i, align 4
  br label %if.end23.i

if.else19.i:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = call i32 @clk_get_rate(ptr noundef nonnull %call12.i) #6
  %pll_rates21.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 6
  %286 = ptrtoint ptr %pll_rates21.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %call20.i, ptr %pll_rates21.i, align 4
  call void @clk_put(ptr noundef nonnull %call12.i) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else19.i, %if.then14.i
  %pll_rates24.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 6
  %arrayidx25.i = getelementptr %struct.j721e_priv, ptr %call.i, i32 0, i32 6, i32 1
  %287 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool.not.i153 = icmp eq i32 %288, 0
  %289 = ptrtoint ptr %pll_rates24.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %pll_rates24.i, align 4
  br i1 %tobool.not.i153, label %land.lhs.true.i, label %if.end23.i.if.end48_crit_edge

if.end23.i.if.end48_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true.i:                                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool28.not.i = icmp eq i32 %290, 0
  br i1 %tobool28.not.i, label %j721e_calculate_rate_range.exit, label %land.lhs.true.i.if.end48_crit_edge

land.lhs.true.i.if.end48_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

j721e_calculate_rate_range.exit:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %291 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %292, ptr noundef nonnull @.str.143) #9
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.i.if.end48_crit_edge, %if.end23.i.if.end48_crit_edge
  %pll_rate.0.i = phi i32 [ %288, %if.end23.i.if.end48_crit_edge ], [ %290, %land.lhs.true.i.if.end48_crit_edge ]
  %div41.i = udiv i32 %pll_rate.0.i, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool44.not.i = icmp eq i32 %290, 0
  %spec.select.i = select i1 %tobool44.not.i, i32 %288, i32 %290
  %293 = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 36864000) #6
  %div5491.i = lshr i32 %293, 8
  %rate_range.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 4
  %openmin.i.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 4, i32 2
  %294 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  %max.i.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 4, i32 1
  %bf.clear8.i.i = and i8 %bf.load.i.i, 15
  store i8 %bf.clear8.i.i, ptr %openmin.i.i, align 4
  %295 = ptrtoint ptr %rate_range.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %div41.i, ptr %rate_range.i, align 4
  %296 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %div5491.i, ptr %max.i.i, align 4
  %drvdata.i = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 1, i32 57
  %297 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i, ptr %drvdata.i, align 4
  %mutex = getelementptr inbounds %struct.j721e_priv, ptr %call.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @j721e_soc_probe.__key) #6
  %call53 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %card23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end48.cleanup_crit_edge, label %do.end58

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call53) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.end48.cleanup_crit_edge, %j721e_calculate_rate_range.exit, %if.end29.i.cleanup_crit_edge, %if.end24.i128.cleanup_crit_edge, %if.end19.i126.cleanup_crit_edge, %do.end9.i, %do.end.i124, %if.end19.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %do.end7.i, %do.end.i, %do.end31, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end31 ], [ -19, %do.end6 ], [ -19, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -22, %j721e_calculate_rate_range.exit ], [ %call53, %do.end58 ], [ 0, %if.end48.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end19.i.cleanup_crit_edge ], [ %call16.i, %if.end14.i.cleanup_crit_edge ], [ %call11.i, %if.end9.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end7.i ], [ -12, %if.end29.i.cleanup_crit_edge ], [ %call26.i, %if.end24.i128.cleanup_crit_edge ], [ %call21.i, %if.end19.i126.cleanup_crit_edge ], [ -22, %do.end.i124 ], [ -22, %do.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j721e_get_clocks(ptr noundef %dev, ptr nocapture noundef %clocks, ptr noundef %prefix) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %prefix) #6
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %clocks, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @.str.55, ptr noundef %prefix) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.56, ptr noundef %prefix) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %call6) #6
  tail call void @kfree(ptr noundef nonnull %call6) #6
  %cmp.i103 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then10, label %if.then7.if.end20_crit_edge

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then10:                                        ; preds = %if.then7
  %2 = ptrtoint ptr %call8 to i32
  %cmp = icmp eq ptr %call8, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then10.cleanup_crit_edge, label %do.body

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j721e_get_clocks.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j721e_get_clocks, %if.then18)) #6
          to label %if.end20 [label %if.then18], !srcloc !316

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @j721e_get_clocks.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %prefix, i32 noundef %2) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body, %if.then7.if.end20_crit_edge
  %parent.0 = phi ptr [ %call8, %if.then7.if.end20_crit_edge ], [ null, %if.then18 ], [ null, %do.body ]
  %parent21 = getelementptr inbounds %struct.j721e_audio_clocks, ptr %clocks, i32 0, i32 1
  %3 = ptrtoint ptr %parent21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent.0, ptr %parent21, align 4
  %call23 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.60, ptr noundef %prefix) #6
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.then25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %call23) #6
  tail call void @kfree(ptr noundef nonnull %call23) #6
  %cmp.i104 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then28, label %if.then25.if.end49_crit_edge

if.then25.if.end49_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then28:                                        ; preds = %if.then25
  %4 = ptrtoint ptr %call26 to i32
  %cmp30 = icmp eq ptr %call26, inttoptr (i32 -517 to ptr)
  br i1 %cmp30, label %if.then28.cleanup_crit_edge, label %do.body33

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j721e_get_clocks.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j721e_get_clocks, %if.end49.thread)) #6
          to label %if.end49 [label %if.end49.thread], !srcloc !316

if.end49.thread:                                  ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @j721e_get_clocks.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %prefix, i32 noundef %4) #6
  %arrayidx51108 = getelementptr %struct.j721e_audio_clocks, ptr %clocks, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx51108 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx51108, align 4
  br label %land.lhs.true

if.end49:                                         ; preds = %do.body33, %if.then25.if.end49_crit_edge
  %parent.1 = phi ptr [ %call26, %if.then25.if.end49_crit_edge ], [ null, %do.body33 ]
  %arrayidx51 = getelementptr %struct.j721e_audio_clocks, ptr %clocks, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent.1, ptr %arrayidx51, align 4
  %tobool56.not = icmp eq ptr %parent.1, null
  br i1 %tobool56.not, label %if.end49.land.lhs.true_crit_edge, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49.land.lhs.true_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end49.land.lhs.true_crit_edge, %if.end49.thread
  %7 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent21, align 4
  %tobool59.not = icmp eq ptr %8, null
  br i1 %tobool59.not, label %do.end63, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end63:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %prefix) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %land.lhs.true.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ -22, %do.end63 ], [ -517, %if.then10.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then28.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_audio_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %4 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2 = tail call fastcc i32 @j721e_configure_refclk(ptr noundef %3, i32 noundef %7, i32 noundef 48000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_clk_id = getelementptr %struct.j721e_priv, ptr %3, i32 0, i32 8, i32 %7, i32 2
  %12 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_clk_id, align 4
  %arrayidx3 = getelementptr %struct.j721e_priv, ptr %3, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 10
  %16 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp86.not = icmp eq i32 %17, 0
  br i1 %cmp86.not, label %if.end.for.end_crit_edge, label %land.rhs.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.087 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais, align 4
  %20 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cpus, align 4
  %add = add i32 %21, %i.087
  %arrayidx5 = getelementptr ptr, ptr %19, i32 %add
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call7 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %23, i32 noundef 0, i32 noundef %15, i32 noundef 0) #6
  %24 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %for.body.cleanup_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 -524, label %for.body.for.inc_crit_edge96
  ]

for.body.for.inc_crit_edge96:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge96
  %inc = add nuw i32 %i.087, 1
  %25 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %call12 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %11, i32 noundef 1, i32 noundef %15, i32 noundef 0) #6
  %27 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call12, label %for.end.cleanup_crit_edge [
    i32 0, label %for.end.if.end17_crit_edge
    i32 -524, label %for.end.if.end17_crit_edge97
  ]

for.end.if.end17_crit_edge97:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %for.end.if.end17_crit_edge, %for.end.if.end17_crit_edge97
  %call18 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %11, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 32) #6
  %28 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call18, label %if.end17.cleanup_crit_edge [
    i32 0, label %if.end17.if.end23_crit_edge
    i32 -524, label %if.end17.if.end23_crit_edge98
  ]

if.end17.if.end23_crit_edge98:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.end17.if.end23_crit_edge98
  %29 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2688.not = icmp eq i32 %30, 0
  br i1 %cmp2688.not, label %if.end23.cleanup_crit_edge, label %land.rhs27.lr.ph

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs27.lr.ph:                                 ; preds = %if.end23
  %num_cpus29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  br label %land.rhs27

land.rhs27:                                       ; preds = %for.inc41.land.rhs27_crit_edge, %land.rhs27.lr.ph
  %i.189 = phi i32 [ 0, %land.rhs27.lr.ph ], [ %inc42, %for.inc41.land.rhs27_crit_edge ]
  %31 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dais, align 4
  %33 = ptrtoint ptr %num_cpus29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_cpus29, align 4
  %add30 = add i32 %34, %i.189
  %arrayidx31 = getelementptr ptr, ptr %32, i32 %add30
  %35 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %36, null
  br i1 %tobool32.not, label %land.rhs27.cleanup_crit_edge, label %for.body34

land.rhs27.cleanup_crit_edge:                     ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body34:                                       ; preds = %land.rhs27
  %call35 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %36, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 32) #6
  %37 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call35, label %for.body34.cleanup_crit_edge [
    i32 0, label %for.body34.for.inc41_crit_edge
    i32 -524, label %for.body34.for.inc41_crit_edge99
  ]

for.body34.for.inc41_crit_edge99:                 ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc41

for.body34.for.inc41_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc41

for.body34.cleanup_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc41:                                        ; preds = %for.body34.for.inc41_crit_edge, %for.body34.for.inc41_crit_edge99
  %inc42 = add nuw i32 %i.189, 1
  %38 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_codecs, align 4
  %cmp26 = icmp ult i32 %inc42, %39
  br i1 %cmp26, label %for.inc41.land.rhs27_crit_edge, label %for.inc41.cleanup_crit_edge

for.inc41.cleanup_crit_edge:                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc41.land.rhs27_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs27

cleanup:                                          ; preds = %for.inc41.cleanup_crit_edge, %for.body34.cleanup_crit_edge, %land.rhs27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call12, %for.end.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %call35, %for.body34.cleanup_crit_edge ], [ 0, %for.inc41.cleanup_crit_edge ], [ 0, %land.rhs27.cleanup_crit_edge ], [ %call7, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @j721e_configure_refclk(ptr nocapture noundef %priv, i32 noundef %audio_domain, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 8, i32 %audio_domain
  %rem = urem i32 %rate, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pll_rates = getelementptr inbounds %struct.j721e_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %pll_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pll_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %rem3 = urem i32 %rate, 11025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3)
  %tobool4.not = icmp eq i32 %rem3, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true5:                                   ; preds = %if.else
  %arrayidx7 = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end11_crit_edge

land.lhs.true5.if.end11_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true5.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  %cmp32 = phi ptr [ @.str.66, %land.lhs.true.if.end11_crit_edge ], [ @.str.67, %land.lhs.true5.if.end11_crit_edge ]
  %clk_id.0 = phi i32 [ 0, %land.lhs.true.if.end11_crit_edge ], [ 1, %land.lhs.true5.if.end11_crit_edge ]
  %arrayidx14 = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 6, i32 %clk_id.0
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx14, align 4
  %mul = shl i32 %rate, 8
  %div = udiv i32 %5, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div)
  %cmp15 = icmp ult i32 %div, 129
  br i1 %cmp15, label %if.end11.if.end20_crit_edge, label %for.inc

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.inc:                                          ; preds = %if.end11
  %mul.1 = shl i32 %rate, 9
  %div.1 = udiv i32 %5, %mul.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div.1)
  %cmp15.1 = icmp ult i32 %div.1, 129
  br i1 %cmp15.1, label %for.inc.if.end20_crit_edge, label %for.inc.1

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.inc.1:                                        ; preds = %for.inc
  %mul.2 = mul i32 %rate, 768
  %div.2 = udiv i32 %5, %mul.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div.2)
  %cmp15.2 = icmp ult i32 %div.2, 129
  br i1 %cmp15.2, label %for.inc.1.if.end20_crit_edge, label %for.inc.2

for.inc.1.if.end20_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.63, i32 noundef %rate) #9
  br label %cleanup

if.end20:                                         ; preds = %for.inc.1.if.end20_crit_edge, %for.inc.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %i.0141.lcssa = phi i32 [ 0, %if.end11.if.end20_crit_edge ], [ 1, %for.inc.if.end20_crit_edge ], [ 2, %for.inc.1.if.end20_crit_edge ]
  %mul.lcssa = phi i32 [ %mul, %if.end11.if.end20_crit_edge ], [ %mul.1, %for.inc.if.end20_crit_edge ], [ %mul.2, %for.inc.1.if.end20_crit_edge ]
  %parent_clk_id = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 8, i32 %audio_domain, i32 2
  %8 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_clk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp21 = icmp eq i32 %9, -1
  br i1 %cmp21, label %if.end20.do.body26_crit_edge, label %lor.lhs.false

if.end20.do.body26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

lor.lhs.false:                                    ; preds = %if.end20
  %arrayidx23 = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul.lcssa)
  %cmp24.not = icmp eq i32 %11, %mul.lcssa
  br i1 %cmp24.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body26_crit_edge

lor.lhs.false.do.body26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body26:                                        ; preds = %lor.lhs.false.do.body26_crit_edge, %if.end20.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j721e_configure_refclk.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j721e_configure_refclk, %if.then30)) #6
          to label %do.end36 [label %if.then30], !srcloc !316

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %arrayidx33 = getelementptr [3 x i32], ptr @ratios_for_pcm3168a, i32 0, i32 %i.0141.lcssa
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @j721e_configure_refclk.__UNIQUE_ID_ddebug238, ptr noundef %13, ptr noundef nonnull @.str.65, i32 noundef %audio_domain, i32 noundef %rate, ptr noundef nonnull %cmp32, i32 noundef %15, i32 noundef %mul.lcssa) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body26
  %16 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_clk_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %clk_id.0)
  %cmp38.not = icmp eq i32 %17, %clk_id.0
  br i1 %cmp38.not, label %do.end36.if.end55_crit_edge, label %if.then39

do.end36.if.end55_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then39:                                        ; preds = %do.end36
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %arrayidx41 = getelementptr %struct.j721e_audio_clocks, ptr %arrayidx, i32 0, i32 1, i32 %clk_id.0
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx41, align 4
  %call42 = tail call i32 @clk_set_parent(ptr noundef %19, ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.then39
  %mcasp = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 8, i32 %audio_domain, i32 1
  %22 = ptrtoint ptr %mcasp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mcasp, align 4
  %arrayidx49 = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 8, i32 %audio_domain, i32 1, i32 1, i32 %clk_id.0
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 4
  %call50 = tail call i32 @clk_set_parent(ptr noundef %23, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %clk_id.0, ptr %parent_clk_id, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %do.end36.if.end55_crit_edge
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call58 = tail call i32 @clk_set_rate(ptr noundef %28, i32 noundef %mul.lcssa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.69, i32 noundef %mul.lcssa) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %mcasp66 = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 8, i32 %audio_domain, i32 1
  %31 = ptrtoint ptr %mcasp66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mcasp66, align 4
  %call68 = tail call i32 @clk_set_rate(ptr noundef %32, i32 noundef %mul.lcssa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %do.end77

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %parent_clk_id, align 4
  %arrayidx73 = getelementptr %struct.j721e_priv, ptr %priv, i32 0, i32 7, i32 %34
  %35 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul.lcssa, ptr %arrayidx73, align 4
  br label %cleanup

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.72, i32 noundef %mul.lcssa) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then70, %do.end63, %if.end45.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.inc.2, %land.lhs.true5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.2 ], [ %call58, %do.end63 ], [ %call68, %do.end77 ], [ -22, %land.lhs.true5.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call42, %if.then39.cleanup_crit_edge ], [ %call50, %if.end45.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_audio_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dais, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %mutex = getelementptr inbounds %struct.j721e_priv, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %active = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 %9, i32 3
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %active, align 4
  %rate = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 0, i32 5
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %for.cond, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond:                                         ; preds = %entry
  %rate.1 = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 1, i32 5
  %18 = ptrtoint ptr %rate.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rate.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1 = icmp eq i32 %19, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.then6_crit_edge

for.cond.if.then6_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %runtime8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %20 = ptrtoint ptr %runtime8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime8, align 4
  %rate_range = getelementptr inbounds %struct.j721e_priv, ptr %5, i32 0, i32 4
  %call9 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %21, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @j721e_rule_rate, ptr noundef %rate_range, i32 noundef 11, i32 noundef -1) #6
  br label %if.end10

if.then6:                                         ; preds = %for.cond.if.then6_crit_edge, %entry.if.then6_crit_edge
  %.lcssa = phi i32 [ %17, %entry.if.then6_crit_edge ], [ %19, %for.cond.if.then6_crit_edge ]
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %23, i32 noundef 11, i32 noundef %.lcssa, i32 noundef %.lcssa) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %for.cond.1
  %ret.0 = phi i32 [ %call.i, %if.then6 ], [ %call9, %for.cond.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.if.then38_crit_edge

if.end10.if.then38_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %13, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 32) #6
  %24 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call14, label %if.end13.out_crit_edge [
    i32 0, label %if.end13.if.end18_crit_edge
    i32 -524, label %if.end13.if.end18_crit_edge93
  ]

if.end13.if.end18_crit_edge93:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %if.end13.if.end18_crit_edge, %if.end13.if.end18_crit_edge93
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2082.not = icmp eq i32 %26, 0
  br i1 %cmp2082.not, label %if.end18.for.end33_crit_edge, label %land.rhs.lr.ph

if.end18.for.end33_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

land.rhs.lr.ph:                                   ; preds = %if.end18
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dais, align 4
  %29 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_cpus, align 4
  %arrayidx2287 = getelementptr ptr, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx2287 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx2287, align 4
  %tobool23.not88 = icmp eq ptr %32, null
  br i1 %tobool23.not88, label %land.rhs.lr.ph.for.end33_crit_edge, label %land.rhs.lr.ph.for.body24_crit_edge

land.rhs.lr.ph.for.body24_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %for.body24

land.rhs.lr.ph.for.end33_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

land.rhs:                                         ; preds = %for.inc31
  %33 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dais, align 4
  %35 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_cpus, align 4
  %add = add i32 %36, %inc32
  %arrayidx22 = getelementptr ptr, ptr %34, i32 %add
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %38, null
  br i1 %tobool23.not, label %land.rhs.for.end33_crit_edge, label %land.rhs.for.body24_crit_edge

land.rhs.for.body24_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24

land.rhs.for.end33_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.body24:                                       ; preds = %land.rhs.for.body24_crit_edge, %land.rhs.lr.ph.for.body24_crit_edge
  %39 = phi ptr [ %38, %land.rhs.for.body24_crit_edge ], [ %32, %land.rhs.lr.ph.for.body24_crit_edge ]
  %i.18489 = phi i32 [ %inc32, %land.rhs.for.body24_crit_edge ], [ 0, %land.rhs.lr.ph.for.body24_crit_edge ]
  %call25 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %39, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 32) #6
  %40 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call25, label %for.body24.out_crit_edge [
    i32 0, label %for.body24.for.inc31_crit_edge
    i32 -524, label %for.body24.for.inc31_crit_edge94
  ]

for.body24.for.inc31_crit_edge94:                 ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

for.body24.for.inc31_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

for.body24.out_crit_edge:                         ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc31:                                        ; preds = %for.body24.for.inc31_crit_edge, %for.body24.for.inc31_crit_edge94
  %inc32 = add nuw i32 %i.18489, 1
  %41 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc32, i32 %42)
  %cmp20 = icmp ult i32 %inc32, %42
  br i1 %cmp20, label %land.rhs, label %for.inc31.for.end33_crit_edge

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %land.rhs.for.end33_crit_edge, %land.rhs.lr.ph.for.end33_crit_edge, %if.end18.for.end33_crit_edge
  %ret.1.lcssa = phi i32 [ %call14, %if.end18.for.end33_crit_edge ], [ %call14, %land.rhs.lr.ph.for.end33_crit_edge ], [ %call25, %land.rhs.for.end33_crit_edge ], [ %call25, %for.inc31.for.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %ret.1.lcssa)
  %cmp34 = icmp eq i32 %ret.1.lcssa, -524
  br i1 %cmp34, label %for.end33.if.end40_crit_edge, label %for.end33.out_crit_edge

for.end33.out_crit_edge:                          ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.end33.if.end40_crit_edge:                     ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

out:                                              ; preds = %for.end33.out_crit_edge, %for.body24.out_crit_edge, %if.end13.out_crit_edge
  %ret.2 = phi i32 [ %ret.1.lcssa, %for.end33.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ], [ %call25, %for.body24.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool37.not = icmp eq i32 %ret.2, 0
  br i1 %tobool37.not, label %out.if.end40_crit_edge, label %out.if.then38_crit_edge

out.if.then38_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

out.if.end40_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %out.if.then38_crit_edge, %if.end10.if.then38_crit_edge
  %ret.278 = phi i32 [ %ret.2, %out.if.then38_crit_edge ], [ %ret.0, %if.end10.if.then38_crit_edge ]
  %43 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %active, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %active, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %out.if.end40_crit_edge, %for.end33.if.end40_crit_edge
  %ret.274 = phi i32 [ %ret.278, %if.then38 ], [ 0, %out.if.end40_crit_edge ], [ 0, %for.end33.if.end40_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.274
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @j721e_audio_shutdown(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %mutex = getelementptr inbounds %struct.j721e_priv, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %active = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 %9, i32 3
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rate = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 %9, i32 5
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rate, align 4
  %active_link = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 %9, i32 4
  %13 = ptrtoint ptr %active_link to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %active_link, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_audio_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dais, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %mutex = getelementptr inbounds %struct.j721e_priv, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %rate = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 %9, i32 5
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %19, %if.end.if.then.i.i.i_crit_edge ], [ %22, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !317
  %add.i.i.i = or i32 %20, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i)
  %cmp6 = icmp eq i32 %call1.i, 16
  %spec.select = select i1 %cmp6, i32 16, i32 32
  %call9 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %13, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef %spec.select) #6
  %23 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call9, label %params_width.exit.out_crit_edge [
    i32 0, label %params_width.exit.if.end14_crit_edge
    i32 -524, label %params_width.exit.if.end14_crit_edge114
  ]

params_width.exit.if.end14_crit_edge114:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

params_width.exit.if.end14_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

params_width.exit.out_crit_edge:                  ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %params_width.exit.if.end14_crit_edge, %params_width.exit.if.end14_crit_edge114
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp15110.not = icmp eq i32 %25, 0
  br i1 %cmp15110.not, label %if.end14.for.end_crit_edge, label %land.rhs.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end14
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0111 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %26 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dais, align 4
  %28 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cpus, align 4
  %add = add i32 %29, %i.0111
  %arrayidx17 = getelementptr ptr, ptr %27, i32 %add
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %31, null
  br i1 %tobool18.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call19 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %31, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef %spec.select) #6
  %32 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call19, label %for.body.out_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 -524, label %for.body.for.inc_crit_edge115
  ]

for.body.for.inc_crit_edge115:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge115
  %inc = add nuw i32 %i.0111, 1
  %33 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_codecs, align 4
  %cmp15 = icmp ult i32 %inc, %34
  br i1 %cmp15, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end14.for.end_crit_edge
  %arrayidx.i.i107 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i107, align 4
  %call26 = tail call fastcc i32 @j721e_configure_refclk(ptr noundef %5, i32 noundef %9, i32 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end29:                                         ; preds = %for.end
  %parent_clk_id = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 8, i32 %9, i32 2
  %37 = ptrtoint ptr %parent_clk_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %parent_clk_id, align 4
  %arrayidx30 = getelementptr %struct.j721e_priv, ptr %5, i32 0, i32 7, i32 %38
  %39 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx30, align 4
  %41 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp33112.not = icmp eq i32 %42, 0
  br i1 %cmp33112.not, label %if.end29.for.end50_crit_edge, label %land.rhs34.lr.ph

if.end29.for.end50_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

land.rhs34.lr.ph:                                 ; preds = %if.end29
  %num_cpus36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  br label %land.rhs34

land.rhs34:                                       ; preds = %for.inc48.land.rhs34_crit_edge, %land.rhs34.lr.ph
  %i.1113 = phi i32 [ 0, %land.rhs34.lr.ph ], [ %inc49, %for.inc48.land.rhs34_crit_edge ]
  %43 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dais, align 4
  %45 = ptrtoint ptr %num_cpus36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_cpus36, align 4
  %add37 = add i32 %46, %i.1113
  %arrayidx38 = getelementptr ptr, ptr %44, i32 %add37
  %47 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %48, null
  br i1 %tobool39.not, label %land.rhs34.for.end50_crit_edge, label %for.body41

land.rhs34.for.end50_crit_edge:                   ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.body41:                                       ; preds = %land.rhs34
  %call42 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %48, i32 noundef 0, i32 noundef %40, i32 noundef 0) #6
  %49 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %call42, label %do.end [
    i32 0, label %for.body41.for.inc48_crit_edge
    i32 -524, label %for.body41.for.inc48_crit_edge116
  ]

for.body41.for.inc48_crit_edge116:                ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc48

for.body41.for.inc48_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc48

do.end:                                           ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.74, i32 noundef %40) #9
  br label %out

for.inc48:                                        ; preds = %for.body41.for.inc48_crit_edge, %for.body41.for.inc48_crit_edge116
  %inc49 = add nuw i32 %i.1113, 1
  %52 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_codecs, align 4
  %cmp33 = icmp ult i32 %inc49, %53
  br i1 %cmp33, label %for.inc48.land.rhs34_crit_edge, label %for.inc48.for.end50_crit_edge

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.inc48.land.rhs34_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs34

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %land.rhs34.for.end50_crit_edge, %if.end29.for.end50_crit_edge
  %call51 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %13, i32 noundef 1, i32 noundef %40, i32 noundef 0) #6
  %54 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call51, label %do.end58 [
    i32 0, label %for.end50.if.else_crit_edge
    i32 -524, label %for.end50.if.else_crit_edge117
  ]

for.end50.if.else_crit_edge117:                   ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.end50.if.else_crit_edge:                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end58:                                         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.77, i32 noundef %40) #9
  br label %out

if.else:                                          ; preds = %for.end50.if.else_crit_edge, %for.end50.if.else_crit_edge117
  %57 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i107, align 4
  %59 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rate, align 4
  br label %out

out:                                              ; preds = %if.else, %do.end58, %do.end, %for.end.out_crit_edge, %for.body.out_crit_edge, %params_width.exit.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ %call26, %for.end.out_crit_edge ], [ %call42, %do.end ], [ %call51, %do.end58 ], [ 0, %if.else ], [ -22, %land.lhs.true.out_crit_edge ], [ %call9, %params_width.exit.out_crit_edge ], [ %call19, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %sub.i = add i32 %3, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call1 = tail call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j721e_audio_init_ivi(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dapm1 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 50
  %call = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm1, ptr noundef nonnull @j721e_ivi_codec_a_dapm_widgets, i32 noundef 7) #6
  %call2 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm1, ptr noundef nonnull @j721e_codec_a_dapm_routes, i32 noundef 14) #6
  %call3 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm1, ptr noundef nonnull @j721e_ivi_codec_b_dapm_widgets, i32 noundef 7) #6
  %call4 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm1, ptr noundef nonnull @j721e_codec_b_dapm_routes, i32 noundef 14) #6
  %call5 = tail call i32 @j721e_audio_init(ptr noundef %rtd)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !172, !174, !176, !177, !178, !180, !182, !183, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !296, !297, !298, !300, !302, !304}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__initcall__kmod_snd_soc_j721e_evm__241_909_j721e_soc_driver_init6, !1, !"__initcall__kmod_snd_soc_j721e_evm__241_909_j721e_soc_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/j721e-evm.c", i32 909, i32 1}
!2 = !{ptr @__exitcall_j721e_soc_driver_exit, !1, !"__exitcall_j721e_soc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/j721e-evm.c", i32 911, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/j721e-evm.c", i32 912, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/j721e-evm.c", i32 913, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/ti/j721e-evm.c", i32 902, i32 11}
!12 = !{ptr @j721e_soc_driver, !13, !"j721e_soc_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/j721e-evm.c", i32 900, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/j721e-evm.c", i32 830, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @j721e_soc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @j721e_soc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/ti/j721e-evm.c", i32 836, i32 3}
!24 = !{ptr @j721e_soc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @j721e_soc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/ti/j721e-evm.c", i32 864, i32 39}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/ti/j721e-evm.c", i32 865, i32 3}
!30 = !{ptr @j721e_soc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @j721e_soc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @j721e_soc_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/ti/j721e-evm.c", i32 891, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/j721e-evm.c", i32 894, i32 3}
!37 = !{ptr @j721e_soc_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @j721e_soc_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/ti/j721e-evm.c", i32 90, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/j721e-evm.c", i32 91, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/ti/j721e-evm.c", i32 92, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/ti/j721e-evm.c", i32 93, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/ti/j721e-evm.c", i32 94, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/ti/j721e-evm.c", i32 95, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/ti/j721e-evm.c", i32 96, i32 2}
!53 = !{ptr @j721e_cpb_dapm_widgets, !54, !"j721e_cpb_dapm_widgets", i1 false, i1 false}
!54 = !{!"../sound/soc/ti/j721e-evm.c", i32 89, i32 41}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/ti/j721e-evm.c", i32 100, i32 28}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/ti/j721e-evm.c", i32 101, i32 28}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/ti/j721e-evm.c", i32 102, i32 28}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/ti/j721e-evm.c", i32 103, i32 28}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/ti/j721e-evm.c", i32 104, i32 28}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/ti/j721e-evm.c", i32 105, i32 28}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/ti/j721e-evm.c", i32 106, i32 25}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/ti/j721e-evm.c", i32 107, i32 25}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ti/j721e-evm.c", i32 109, i32 3}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/ti/j721e-evm.c", i32 110, i32 3}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/ti/j721e-evm.c", i32 111, i32 3}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/ti/j721e-evm.c", i32 112, i32 3}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/ti/j721e-evm.c", i32 113, i32 3}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/ti/j721e-evm.c", i32 114, i32 3}
!83 = !{ptr @j721e_cpb_dapm_routes, !84, !"j721e_cpb_dapm_routes", i1 false, i1 false}
!84 = !{!"../sound/soc/ti/j721e-evm.c", i32 99, i32 40}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/ti/j721e-evm.c", i32 624, i32 36}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/ti/j721e-evm.c", i32 626, i32 3}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @j721e_soc_probe_cpb._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @j721e_soc_probe_cpb._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/ti/j721e-evm.c", i32 630, i32 38}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/ti/j721e-evm.c", i32 632, i32 3}
!96 = !{ptr @j721e_soc_probe_cpb._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @j721e_soc_probe_cpb._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/ti/j721e-evm.c", i32 637, i32 52}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/ti/j721e-evm.c", i32 641, i32 52}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/ti/j721e-evm.c", i32 664, i32 36}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/ti/j721e-evm.c", i32 665, i32 43}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/ti/j721e-evm.c", i32 669, i32 48}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/ti/j721e-evm.c", i32 684, i32 36}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/ti/j721e-evm.c", i32 689, i32 48}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/ti/j721e-evm.c", i32 698, i32 44}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/ti/j721e-evm.c", i32 701, i32 44}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/ti/j721e-evm.c", i32 469, i32 10}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/ti/j721e-evm.c", i32 471, i32 35}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/ti/j721e-evm.c", i32 480, i32 4}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @j721e_get_clocks.__UNIQUE_ID_ddebug239, !121, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/ti/j721e-evm.c", i32 488, i32 35}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/ti/j721e-evm.c", i32 497, i32 4}
!129 = !{ptr @j721e_get_clocks.__UNIQUE_ID_ddebug240, !128, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/ti/j721e-evm.c", i32 507, i32 3}
!132 = !{ptr @j721e_get_clocks._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @j721e_get_clocks._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/ti/j721e-evm.c", i32 198, i32 3}
!136 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @j721e_configure_refclk._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @j721e_configure_refclk._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/ti/j721e-evm.c", i32 204, i32 3}
!141 = !{ptr @j721e_configure_refclk.__UNIQUE_ID_ddebug238, !140, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!142 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/ti/j721e-evm.c", i32 226, i32 4}
!146 = !{ptr @j721e_configure_refclk._entry.68, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @j721e_configure_refclk._entry_ptr.70, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/ti/j721e-evm.c", i32 235, i32 4}
!150 = !{ptr @j721e_configure_refclk._entry.71, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @j721e_configure_refclk._entry_ptr.73, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @ratios_for_pcm3168a, !153, !"ratios_for_pcm3168a", i1 false, i1 false}
!153 = !{!"../sound/soc/ti/j721e-evm.c", i32 53, i32 21}
!154 = !{ptr @j721e_audio_ops, !155, !"j721e_audio_ops", i1 false, i1 false}
!155 = !{!"../sound/soc/ti/j721e-evm.c", i32 395, i32 33}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/ti/j721e-evm.c", i32 354, i32 4}
!158 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @j721e_audio_hw_params._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @j721e_audio_hw_params._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/ti/j721e-evm.c", i32 365, i32 3}
!163 = !{ptr @j721e_audio_hw_params._entry.76, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @j721e_audio_hw_params._entry_ptr.78, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/ti/j721e-evm.c", i32 720, i32 36}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/ti/j721e-evm.c", i32 722, i32 3}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @j721e_soc_probe_ivi._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @j721e_soc_probe_ivi._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/ti/j721e-evm.c", i32 726, i32 39}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/ti/j721e-evm.c", i32 728, i32 3}
!176 = !{ptr @j721e_soc_probe_ivi._entry.83, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @j721e_soc_probe_ivi._entry_ptr.85, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/ti/j721e-evm.c", i32 732, i32 39}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/ti/j721e-evm.c", i32 734, i32 3}
!182 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @j721e_soc_probe_ivi._entry.87, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @j721e_soc_probe_ivi._entry_ptr.90, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/ti/j721e-evm.c", i32 739, i32 52}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/ti/j721e-evm.c", i32 743, i32 52}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/ti/j721e-evm.c", i32 769, i32 36}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/ti/j721e-evm.c", i32 770, i32 43}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/ti/j721e-evm.c", i32 791, i32 36}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/ti/j721e-evm.c", i32 807, i32 44}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/ti/j721e-evm.c", i32 811, i32 44}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/ti/j721e-evm.c", i32 815, i32 44}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/ti/j721e-evm.c", i32 118, i32 2}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/ti/j721e-evm.c", i32 119, i32 2}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/ti/j721e-evm.c", i32 120, i32 2}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/ti/j721e-evm.c", i32 121, i32 2}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/ti/j721e-evm.c", i32 122, i32 2}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/ti/j721e-evm.c", i32 123, i32 2}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/ti/j721e-evm.c", i32 124, i32 2}
!215 = !{ptr @j721e_ivi_codec_a_dapm_widgets, !216, !"j721e_ivi_codec_a_dapm_widgets", i1 false, i1 false}
!216 = !{!"../sound/soc/ti/j721e-evm.c", i32 117, i32 41}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/ti/j721e-evm.c", i32 128, i32 29}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/ti/j721e-evm.c", i32 129, i32 29}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/ti/j721e-evm.c", i32 130, i32 29}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/ti/j721e-evm.c", i32 131, i32 29}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/ti/j721e-evm.c", i32 132, i32 29}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/ti/j721e-evm.c", i32 133, i32 29}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/ti/j721e-evm.c", i32 134, i32 29}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/ti/j721e-evm.c", i32 135, i32 29}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/ti/j721e-evm.c", i32 137, i32 3}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/ti/j721e-evm.c", i32 138, i32 3}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/ti/j721e-evm.c", i32 139, i32 3}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/ti/j721e-evm.c", i32 140, i32 3}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/ti/j721e-evm.c", i32 141, i32 3}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/ti/j721e-evm.c", i32 142, i32 3}
!245 = !{ptr @j721e_codec_a_dapm_routes, !246, !"j721e_codec_a_dapm_routes", i1 false, i1 false}
!246 = !{!"../sound/soc/ti/j721e-evm.c", i32 127, i32 40}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/ti/j721e-evm.c", i32 146, i32 2}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/ti/j721e-evm.c", i32 147, i32 2}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/ti/j721e-evm.c", i32 148, i32 2}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/ti/j721e-evm.c", i32 149, i32 2}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/ti/j721e-evm.c", i32 150, i32 2}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/ti/j721e-evm.c", i32 151, i32 2}
!259 = !{ptr @.str.127, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/ti/j721e-evm.c", i32 152, i32 2}
!261 = !{ptr @j721e_ivi_codec_b_dapm_widgets, !262, !"j721e_ivi_codec_b_dapm_widgets", i1 false, i1 false}
!262 = !{!"../sound/soc/ti/j721e-evm.c", i32 145, i32 41}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/ti/j721e-evm.c", i32 156, i32 29}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/ti/j721e-evm.c", i32 157, i32 29}
!267 = !{ptr @.str.131, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/ti/j721e-evm.c", i32 158, i32 29}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/ti/j721e-evm.c", i32 159, i32 29}
!271 = !{ptr @.str.133, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/ti/j721e-evm.c", i32 160, i32 29}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/ti/j721e-evm.c", i32 161, i32 29}
!275 = !{ptr @.str.135, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/ti/j721e-evm.c", i32 162, i32 29}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/ti/j721e-evm.c", i32 163, i32 29}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/ti/j721e-evm.c", i32 165, i32 3}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/ti/j721e-evm.c", i32 166, i32 3}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/ti/j721e-evm.c", i32 167, i32 3}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/ti/j721e-evm.c", i32 168, i32 3}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/ti/j721e-evm.c", i32 169, i32 3}
!289 = !{ptr @.str.142, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/ti/j721e-evm.c", i32 170, i32 3}
!291 = !{ptr @j721e_codec_b_dapm_routes, !292, !"j721e_codec_b_dapm_routes", i1 false, i1 false}
!292 = !{!"../sound/soc/ti/j721e-evm.c", i32 155, i32 40}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/ti/j721e-evm.c", i32 585, i32 3}
!295 = !{ptr @.str.144, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @j721e_calculate_rate_range._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @j721e_calculate_rate_range._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @j721e_audio_of_match, !299, !"j721e_audio_of_match", i1 false, i1 false}
!299 = !{!"../sound/soc/ti/j721e-evm.c", i32 541, i32 34}
!300 = !{ptr @j721e_cpb_data, !301, !"j721e_cpb_data", i1 false, i1 false}
!301 = !{!"../sound/soc/ti/j721e-evm.c", i32 515, i32 44}
!302 = !{ptr @j721e_cpb_ivi_data, !303, !"j721e_cpb_ivi_data", i1 false, i1 false}
!303 = !{!"../sound/soc/ti/j721e-evm.c", i32 524, i32 44}
!304 = !{ptr @j7200_cpb_data, !305, !"j7200_cpb_data", i1 false, i1 false}
!305 = !{!"../sound/soc/ti/j721e-evm.c", i32 533, i32 44}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{i64 2148746371, i64 2148746376, i64 2148746389, i64 2148746433, i64 2148746467, i64 2148746488}
!317 = !{i32 0, i32 33}
