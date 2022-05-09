; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/midas_wm1811.c_pt.bc'
source_filename = "../sound/soc/samsung/midas_wm1811.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.midas_priv = type { ptr, ptr, ptr, ptr, i32, %struct.snd_soc_jack }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@__initcall__kmod_snd_soc_midas_wm1811__294_538_midas_driver_init6 = internal global ptr @midas_driver_init, section ".initcall6.init", align 4
@midas_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @midas_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @midas_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_midas_driver_exit = internal global ptr @midas_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [64 x i8] c"snd_soc_midas_wm1811.author=Simon Shields <simon@lineageos.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [56 x i8] c"snd_soc_midas_wm1811.description=ASoC support for Midas\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [65 x i8] c"snd_soc_midas_wm1811.file=sound/soc/samsung/snd-soc-midas-wm1811\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [36 x i8] c"snd_soc_midas_wm1811.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"midas-audio\00", [20 x i8] zeroinitializer }, align 32
@midas_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,midas-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@midas_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.42, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @midas_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @midas_set_bias_level, ptr null, ptr null, ptr null, i32 0, ptr @midas_dai, i32 3, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @midas_controls, i32 9, ptr @midas_dapm_widgets, i32 9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@midas_probe.dai_link = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mic-bias\00", [23 x i8] zeroinitializer }, align 32
@midas_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get mic bias regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"midas_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/samsung/midas_wm1811.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr = internal global ptr @midas_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"submic-bias\00", [20 x i8] zeroinitializer }, align 32
@midas_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get submic bias regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.10 = internal global ptr @midas_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fm-sel\00", [25 x i8] zeroinitializer }, align 32
@midas_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get FM selection GPIO\0A\00", [63 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.14 = internal global ptr @midas_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lineout-sel\00", [20 x i8] zeroinitializer }, align 32
@midas_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get line out selection GPIO\0A\00", [57 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.18 = internal global ptr @midas_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@midas_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Card name is not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.22 = internal global ptr @midas_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,audio-routing\00", [42 x i8] zeroinitializer }, align 32
@midas_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 466, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Audio routing invalid/unspecified\0A\00", [61 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.26 = internal global ptr @midas_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sound-dai\00", [22 x i8] zeroinitializer }, align 32
@midas_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"parsing cpu/sound-dai failed\0A\00", [34 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.32 = internal global ptr @midas_probe._entry.30, section ".printk_index", align 4
@midas_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"audio-codec property invalid/missing\0A\00", [58 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.35 = internal global ptr @midas_probe._entry.33, section ".printk_index", align 4
@midas_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@midas_ext_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.64, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.66, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@midas_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.38 = internal global ptr @midas_probe._entry.36, section ".printk_index", align 4
@midas_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register card: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@midas_probe._entry_ptr.41 = internal global ptr @midas_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Midas WM1811\00", [19 x i8] zeroinitializer }, align 32
@midas_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.88 to i32) }], [112 x i8] zeroinitializer }, align 32
@midas_late_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to switch to MCLK2: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"midas_late_probe\00", [47 x i8] zeroinitializer }, align 32
@midas_late_probe._entry_ptr = internal global ptr @midas_late_probe._entry, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Headset\00", [24 x i8] zeroinitializer }, align 32
@midas_stop_fll1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to switch to MCLK2: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"midas_stop_fll1\00", [16 x i8] zeroinitializer }, align 32
@midas_stop_fll1._entry_ptr = internal global ptr @midas_stop_fll1._entry, section ".printk_index", align 4
@midas_stop_fll1._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to stop FLL1: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@midas_stop_fll1._entry_ptr.50 = internal global ptr @midas_stop_fll1._entry.48, section ".printk_index", align 4
@midas_start_fll1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.51, ptr @.str.4, i32 62, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"midas_start_fll1\00", [47 x i8] zeroinitializer }, align 32
@midas_start_fll1._entry_ptr = internal global ptr @midas_start_fll1._entry, section ".printk_index", align 4
@midas_start_fll1._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 70, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set FLL1 rate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@midas_start_fll1._entry_ptr.54 = internal global ptr @midas_start_fll1._entry.52, section ".printk_index", align 4
@midas_start_fll1._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 78, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set SYSCLK source: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@midas_start_fll1._entry_ptr.57 = internal global ptr @midas_start_fll1._entry.55, section ".printk_index", align 4
@midas_start_fll1._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.4, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set OPCLK source: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@midas_start_fll1._entry_ptr.60 = internal global ptr @midas_start_fll1._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WM8994 AIF1\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Primary\00", [19 x i8] zeroinitializer }, align 32
@wm1811_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@wm1811_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.68 }], [20 x i8] zeroinitializer }, align 32
@wm1811_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@midas_aif1_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @midas_aif1_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WM1811 Voice\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Voice call\00", [21 x i8] zeroinitializer }, align 32
@wm1811_voice_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@wm1811_voice_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@wm1811_voice_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WM1811 BT\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bluetooth\00", [22 x i8] zeroinitializer }, align 32
@wm1811_bt_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@wm1811_bt_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.70 }], [20 x i8] zeroinitializer }, align 32
@wm1811_bt_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@midas_dai = internal global { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [68 x i8] } { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.61, ptr @.str.62, ptr @wm1811_hifi_cpus, i32 1, ptr @wm1811_hifi_codecs, i32 1, ptr @wm1811_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @midas_aif1_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.63, ptr @.str.64, ptr @wm1811_voice_cpus, i32 1, ptr @wm1811_voice_codecs, i32 1, ptr @wm1811_voice_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.65, ptr @.str.66, ptr @wm1811_bt_cpus, i32 1, ptr @wm1811_bt_codecs, i32 1, ptr @wm1811_bt_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [68 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif2\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif3\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP Switch\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPK Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RCV Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCV\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINE Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINE\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Main Mic Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main Mic\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sub Mic Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub Mic\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FM In Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FM In\00", [26 x i8] zeroinitializer }, align 32
@midas_dapm_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @midas_ext_spkmode, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @midas_line_set, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @midas_fm_set, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @midas_mic_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @midas_submic_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"midas_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 530, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 532, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"midas_of_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 524, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"midas_card\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 401, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"dai_link\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 422, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 433, i32 47 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 435, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 439, i32 50 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 441, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 445, i32 51 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 447, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 451, i32 56 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 454, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 458, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 460, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 464, i32 45 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 466, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 470, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 474, i32 45 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 480, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 483, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 491, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"midas_component\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 361, i32 46 }
@___asan_gen_.200 = private unnamed_addr constant [14 x i8] c"midas_ext_dai\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 320, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 505, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 511, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 402, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"midas_controls\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 236, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 303, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 307, i32 36 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 102, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 108, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 62, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 70, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 78, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 85, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 382, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 383, i32 18 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"wm1811_hifi_cpus\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [19 x i8] c"wm1811_hifi_codecs\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [22 x i8] c"wm1811_hifi_platforms\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"midas_aif1_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 132, i32 33 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 389, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 390, i32 18 }
@___asan_gen_.296 = private unnamed_addr constant [18 x i8] c"wm1811_voice_cpus\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c"wm1811_voice_codecs\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [23 x i8] c"wm1811_voice_platforms\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 394, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 395, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant [15 x i8] c"wm1811_bt_cpus\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"wm1811_bt_codecs\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c"wm1811_bt_platforms\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [10 x i8] c"midas_dai\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 380, i32 32 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 365, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 370, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 375, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 237, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 239, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 240, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 242, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 243, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 245, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 246, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 247, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 249, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [19 x i8] c"midas_dapm_widgets\00", align 1
@___asan_gen_.387 = private constant [36 x i8] c"../sound/soc/samsung/midas_wm1811.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 252, i32 41 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_midas_driver_exit, ptr @__initcall__kmod_snd_soc_midas_wm1811__294_538_midas_driver_init6, ptr @midas_driver_exit, ptr @midas_late_probe._entry, ptr @midas_late_probe._entry_ptr, ptr @midas_probe._entry, ptr @midas_probe._entry.12, ptr @midas_probe._entry.16, ptr @midas_probe._entry.20, ptr @midas_probe._entry.24, ptr @midas_probe._entry.30, ptr @midas_probe._entry.33, ptr @midas_probe._entry.36, ptr @midas_probe._entry.39, ptr @midas_probe._entry.8, ptr @midas_probe._entry_ptr, ptr @midas_probe._entry_ptr.10, ptr @midas_probe._entry_ptr.14, ptr @midas_probe._entry_ptr.18, ptr @midas_probe._entry_ptr.22, ptr @midas_probe._entry_ptr.26, ptr @midas_probe._entry_ptr.32, ptr @midas_probe._entry_ptr.35, ptr @midas_probe._entry_ptr.38, ptr @midas_probe._entry_ptr.41, ptr @midas_start_fll1._entry, ptr @midas_start_fll1._entry.52, ptr @midas_start_fll1._entry.55, ptr @midas_start_fll1._entry.58, ptr @midas_start_fll1._entry_ptr, ptr @midas_start_fll1._entry_ptr.54, ptr @midas_start_fll1._entry_ptr.57, ptr @midas_start_fll1._entry_ptr.60, ptr @midas_stop_fll1._entry, ptr @midas_stop_fll1._entry.48, ptr @midas_stop_fll1._entry_ptr, ptr @midas_stop_fll1._entry_ptr.50, ptr @midas_driver, ptr @.str, ptr @midas_of_match, ptr @midas_card, ptr @midas_probe.dai_link, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @midas_component, ptr @midas_ext_dai, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @midas_controls, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @wm1811_hifi_cpus, ptr @wm1811_hifi_codecs, ptr @wm1811_hifi_platforms, ptr @midas_aif1_ops, ptr @.str.63, ptr @.str.64, ptr @wm1811_voice_cpus, ptr @wm1811_voice_codecs, ptr @wm1811_voice_platforms, ptr @.str.65, ptr @.str.66, ptr @wm1811_bt_cpus, ptr @wm1811_bt_codecs, ptr @wm1811_bt_platforms, ptr @midas_dai, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @midas_dapm_widgets], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe.dai_link to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_ext_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_late_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_stop_fll1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_stop_fll1._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_start_fll1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_start_fll1._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_start_fll1._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_start_fll1._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_aif1_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_voice_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_voice_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_voice_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_bt_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_bt_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_bt_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_dai to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_dapm_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @midas_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @midas_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @midas_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i166 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 240, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 57), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 5), align 4
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %reg_submic_bias = getelementptr inbounds %struct.midas_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_submic_bias to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %reg_submic_bias, align 4
  %cmp.i162 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %5 = ptrtoint ptr %reg_submic_bias to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_submic_bias, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 7) #5
  %gpio_fm_sel = getelementptr inbounds %struct.midas_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %gpio_fm_sel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call20, ptr %gpio_fm_sel, align 4
  %cmp.i163 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %9 = ptrtoint ptr %gpio_fm_sel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_fm_sel, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call30 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 7) #5
  %gpio_lineout_sel = getelementptr inbounds %struct.midas_priv, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %gpio_lineout_sel to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %gpio_lineout_sel, align 4
  %cmp.i164 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  %13 = ptrtoint ptr %gpio_lineout_sel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_lineout_sel, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %call40 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @midas_card, ptr noundef nonnull @.str.19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %do.end44, label %if.end45

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %call46 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @midas_card, ptr noundef nonnull @.str.23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end52

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call53 = tail call ptr @of_get_child_by_name(ptr noundef %17, ptr noundef nonnull @.str.27) #5
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call58 = tail call ptr @of_get_child_by_name(ptr noundef %19, ptr noundef nonnull @.str.28) #5
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %call53) #5
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i165 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call53, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  call void @of_node_put(ptr noundef nonnull %call53) #5
  br label %do.end67

of_parse_phandle.exit:                            ; preds = %if.end61
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  call void @of_node_put(ptr noundef nonnull %call53) #5
  %tobool63.not = icmp eq ptr %22, null
  br i1 %tobool63.not, label %of_parse_phandle.exit.do.end67_crit_edge, label %if.end68

of_parse_phandle.exit.do.end67_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

do.end67:                                         ; preds = %of_parse_phandle.exit.do.end67_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  call void @of_node_put(ptr noundef nonnull %call58) #5
  br label %cleanup

if.end68:                                         ; preds = %of_parse_phandle.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i166) #5
  %23 = call ptr @memset(ptr %args.i166, i32 255, i32 72)
  %call.i167 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call58, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i166) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i168 = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i168, label %of_parse_phandle.exit171, label %of_parse_phandle.exit171.thread

of_parse_phandle.exit171.thread:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i166) #5
  call void @of_node_put(ptr noundef nonnull %call58) #5
  br label %do.end74

of_parse_phandle.exit171:                         ; preds = %if.end68
  %24 = ptrtoint ptr %args.i166 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i166, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i166) #5
  call void @of_node_put(ptr noundef nonnull %call58) #5
  %tobool70.not = icmp eq ptr %25, null
  br i1 %tobool70.not, label %of_parse_phandle.exit171.do.end74_crit_edge, label %for.cond.preheader

of_parse_phandle.exit171.do.end74_crit_edge:      ; preds = %of_parse_phandle.exit171
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end74

for.cond.preheader:                               ; preds = %of_parse_phandle.exit171
  %26 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp76176 = icmp sgt i32 %26, 0
  br i1 %cmp76176, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

do.end74:                                         ; preds = %of_parse_phandle.exit171.do.end74_crit_edge, %of_parse_phandle.exit171.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #8
  br label %put_cpu_dai_node

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0177 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %27 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %27, i32 %i.0177
  %tobool77.not = icmp eq ptr %arrayidx, null
  br i1 %tobool77.not, label %land.rhs.for.end.sink.split_crit_edge, label %for.body

land.rhs.for.end.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

for.body:                                         ; preds = %land.rhs
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %27, i32 %i.0177, i32 4
  %28 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %codecs, align 4
  %of_node78 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %of_node78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %25, ptr %of_node78, align 4
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %27, i32 %i.0177, i32 2
  %31 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpus, align 4
  %of_node79 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %of_node79 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %22, ptr %of_node79, align 4
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %27, i32 %i.0177, i32 6
  %34 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %platforms, align 4
  %of_node80 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %of_node80 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %22, ptr %of_node80, align 4
  %inc = add nuw nsw i32 %i.0177, 1
  %37 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 25), align 4
  %cmp76 = icmp slt i32 %inc, %37
  br i1 %cmp76, label %for.body.land.rhs_crit_edge, label %for.body.for.end.sink.split_crit_edge

for.body.for.end.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end.sink.split:                               ; preds = %for.body.for.end.sink.split_crit_edge, %land.rhs.for.end.sink.split_crit_edge
  %.sink = phi ptr [ %arrayidx, %for.body.for.end.sink.split_crit_edge ], [ null, %land.rhs.for.end.sink.split_crit_edge ]
  store ptr %.sink, ptr @midas_probe.dai_link, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.cond.preheader.for.end_crit_edge
  %call81 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @midas_component, ptr noundef nonnull @midas_ext_dai, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.end86, label %if.end87

do.end86:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call81) #8
  br label %put_codec_dai_node

if.end87:                                         ; preds = %for.end
  %call88 = call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull @midas_card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call88) #8
  br label %put_codec_dai_node

put_codec_dai_node:                               ; preds = %do.end93, %do.end86
  %ret.0 = phi i32 [ %call81, %do.end86 ], [ %call88, %do.end93 ]
  call void @of_node_put(ptr noundef nonnull %25) #5
  br label %put_cpu_dai_node

put_cpu_dai_node:                                 ; preds = %put_codec_dai_node, %do.end74
  %ret.1 = phi i32 [ %ret.0, %put_codec_dai_node ], [ -22, %do.end74 ]
  call void @of_node_put(ptr noundef nonnull %22) #5
  br label %cleanup

cleanup:                                          ; preds = %put_cpu_dai_node, %if.end87.cleanup_crit_edge, %do.end67, %if.then60, %if.end52.cleanup_crit_edge, %do.end51, %do.end44, %do.end36, %do.end26, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %7, %do.end16 ], [ %11, %do.end26 ], [ %15, %do.end36 ], [ %call40, %do.end44 ], [ %call46, %do.end51 ], [ %ret.1, %put_cpu_dai_node ], [ -22, %do.end67 ], [ -22, %if.then60 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_late_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %1) #5
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %8 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata.i, align 4
  %call3 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %headset_jack = getelementptr inbounds %struct.midas_priv, ptr %9, i32 0, i32 5
  %call4 = tail call i32 @snd_soc_card_jack_new(ptr noundef %card, ptr noundef nonnull @.str.45, i32 noundef 32267, ptr noundef %headset_jack, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %component, align 4
  %call8 = tail call i32 @wm8958_mic_detect(ptr noundef %13, ptr noundef %headset_jack, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_set_bias_level(ptr noundef %card, ptr nocapture noundef readonly %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %1) #5
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %cmp.not = icmp eq ptr %9, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %card1.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card1.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 57
  %15 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata.i.i, align 4
  %call2.i = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.46, i32 noundef %call2.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call3.i = tail call i32 @snd_soc_dai_set_pll(ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev9.i = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.49, i32 noundef %call3.i) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %fll1_rate.i = getelementptr inbounds %struct.midas_priv, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %fll1_rate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %fll1_rate.i, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call fastcc i32 @midas_start_fll1(ptr noundef %call, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %if.end10.i, %do.end8.i, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call2.i, %do.end.i ], [ %call3.i, %do.end8.i ], [ 0, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8958_mic_detect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @midas_start_fll1(ptr nocapture noundef readonly %rtd, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fll1_rate = getelementptr inbounds %struct.midas_priv, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %fll1_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fll1_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %rate, %entry.if.end_crit_edge ], [ %13, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate.addr.0)
  %tobool4.not = icmp eq i32 %rate.addr.0, 0
  %spec.store.select = select i1 %tobool4.not, i32 11289600, i32 %rate.addr.0
  %fll1_rate7 = getelementptr inbounds %struct.midas_priv, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %fll1_rate7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fll1_rate7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %15)
  %cmp.not = icmp eq i32 %spec.store.select, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  %or.cond = or i1 %tobool9.not, %cmp.not
  br i1 %or.cond, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.46, i32 noundef %call11) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call16 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 24000000, i32 noundef %spec.store.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.53, i32 noundef %call16) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %fll1_rate7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %fll1_rate7, align 4
  %call26 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 3, i32 noundef %spec.store.select, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.56, i32 noundef %call26) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call34 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %11, i32 noundef 3, i32 noundef 0, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %dev40 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.59, i32 noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end33.cleanup_crit_edge, %do.end31, %do.end21, %do.end
  %retval.0 = phi i32 [ %call11, %do.end ], [ %call16, %do.end21 ], [ %call26, %do.end31 ], [ %call34, %do.end39 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_aif1_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %3)
  %switch.selectcmp.case1 = icmp eq i32 %3, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %3)
  %switch.selectcmp.case2 = icmp eq i32 %3, 11025
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = select i1 %switch.selectcmp, i32 9, i32 8
  %mul5 = shl i32 %3, %4
  %call6 = tail call fastcc i32 @midas_start_fll1(ptr noundef %1, i32 noundef %mul5)
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_ext_spkmode(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 8, %entry.sw.epilog.sink.split_crit_edge ]
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 8, i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call3, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_line_set(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %gpio_lineout_sel = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gpio_lineout_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_lineout_sel, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb3
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ %event, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_fm_set(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %gpio_fm_sel = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %gpio_fm_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_fm_sel, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb3
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ %event, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_mic_bias(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %8) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb3 ], [ %call2, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midas_submic_bias(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_submic_bias = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %reg_submic_bias to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_submic_bias, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %8) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_submic_bias4 = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %reg_submic_bias4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_submic_bias4, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb3 ], [ %call2, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__initcall__kmod_snd_soc_midas_wm1811__294_538_midas_driver_init6, !1, !"__initcall__kmod_snd_soc_midas_wm1811__294_538_midas_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 538, i32 1}
!2 = !{ptr @__exitcall_midas_driver_exit, !1, !"__exitcall_midas_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 540, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 541, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 542, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 532, i32 11}
!12 = !{ptr @midas_driver, !13, !"midas_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 530, i32 31}
!14 = !{ptr @midas_probe.dai_link, !15, !"dai_link", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 422, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 433, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 435, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @midas_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @midas_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 439, i32 50}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 441, i32 3}
!30 = !{ptr @midas_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @midas_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 445, i32 51}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 447, i32 3}
!36 = !{ptr @midas_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @midas_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 451, i32 56}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 454, i32 3}
!42 = !{ptr @midas_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @midas_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 458, i32 41}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 460, i32 3}
!48 = !{ptr @midas_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @midas_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 464, i32 45}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 466, i32 3}
!54 = !{ptr @midas_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @midas_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 470, i32 43}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 474, i32 45}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 480, i32 39}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 483, i32 3}
!64 = !{ptr @midas_probe._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @midas_probe._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 491, i32 3}
!68 = !{ptr @midas_probe._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @midas_probe._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 505, i32 3}
!72 = !{ptr @midas_probe._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @midas_probe._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 511, i32 3}
!76 = !{ptr @midas_probe._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @midas_probe._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 402, i32 10}
!80 = !{ptr @midas_card, !81, !"midas_card", i1 false, i1 false}
!81 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 401, i32 28}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 303, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @midas_late_probe._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @midas_late_probe._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 307, i32 36}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 102, i32 3}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @midas_stop_fll1._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @midas_stop_fll1._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 108, i32 3}
!96 = !{ptr @midas_stop_fll1._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @midas_stop_fll1._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 62, i32 4}
!100 = !{ptr @midas_start_fll1._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @midas_start_fll1._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 70, i32 3}
!104 = !{ptr @midas_start_fll1._entry.52, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @midas_start_fll1._entry_ptr.54, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 78, i32 3}
!108 = !{ptr @midas_start_fll1._entry.55, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @midas_start_fll1._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 85, i32 3}
!112 = !{ptr @midas_start_fll1._entry.58, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @midas_start_fll1._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 382, i32 11}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 383, i32 18}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 389, i32 11}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 390, i32 18}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 394, i32 11}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 395, i32 18}
!126 = !{ptr @midas_dai, !127, !"midas_dai", i1 false, i1 false}
!127 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 380, i32 32}
!128 = !{ptr @wm1811_hifi_cpus, !129, !"wm1811_hifi_cpus", i1 false, i1 false}
!129 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 365, i32 1}
!130 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @wm1811_hifi_codecs, !129, !"wm1811_hifi_codecs", i1 false, i1 false}
!132 = !{ptr @wm1811_hifi_platforms, !129, !"wm1811_hifi_platforms", i1 false, i1 false}
!133 = !{ptr @midas_aif1_ops, !134, !"midas_aif1_ops", i1 false, i1 false}
!134 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 132, i32 33}
!135 = !{ptr @wm1811_voice_cpus, !136, !"wm1811_voice_cpus", i1 false, i1 false}
!136 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 370, i32 1}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @wm1811_voice_codecs, !136, !"wm1811_voice_codecs", i1 false, i1 false}
!139 = !{ptr @wm1811_voice_platforms, !136, !"wm1811_voice_platforms", i1 false, i1 false}
!140 = !{ptr @wm1811_bt_cpus, !141, !"wm1811_bt_cpus", i1 false, i1 false}
!141 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 375, i32 1}
!142 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wm1811_bt_codecs, !141, !"wm1811_bt_codecs", i1 false, i1 false}
!144 = !{ptr @wm1811_bt_platforms, !141, !"wm1811_bt_platforms", i1 false, i1 false}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 237, i32 2}
!147 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 239, i32 2}
!150 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 240, i32 2}
!153 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 242, i32 2}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 243, i32 2}
!159 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 245, i32 2}
!162 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 246, i32 2}
!165 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 247, i32 2}
!168 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 249, i32 2}
!171 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @midas_controls, !173, !"midas_controls", i1 false, i1 false}
!173 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 236, i32 38}
!174 = !{ptr @midas_dapm_widgets, !175, !"midas_dapm_widgets", i1 false, i1 false}
!175 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 252, i32 41}
!176 = !{ptr @midas_component, !177, !"midas_component", i1 false, i1 false}
!177 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 361, i32 46}
!178 = !{ptr @midas_ext_dai, !179, !"midas_ext_dai", i1 false, i1 false}
!179 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 320, i32 34}
!180 = !{ptr @midas_of_match, !181, !"midas_of_match", i1 false, i1 false}
!181 = !{!"../sound/soc/samsung/midas_wm1811.c", i32 524, i32 34}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
