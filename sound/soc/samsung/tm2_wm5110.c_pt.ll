; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/tm2_wm5110.c_pt.bc'
source_filename = "../sound/soc/samsung/tm2_wm5110.c"
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
%struct.snd_soc_aux_dev = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
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
%struct.tm2_machine_priv = type { ptr, i32, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@__initcall__kmod_snd_soc_tm2_wm5110__294_669_tm2_driver_init6 = internal global ptr @tm2_driver_init, section ".initcall6.init", align 4
@tm2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tm2_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tm2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tm2_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tm2_driver_exit = internal global ptr @tm2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [61 x i8] c"snd_soc_tm2_wm5110.author=Inha Song <ideal.song@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [65 x i8] c"snd_soc_tm2_wm5110.description=ALSA SoC Exynos TM2 Audio Support\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [61 x i8] c"snd_soc_tm2_wm5110.file=sound/soc/samsung/snd-soc-tm2-wm5110\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [34 x i8] c"snd_soc_tm2_wm5110.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tm2-audio\00", [22 x i8] zeroinitializer }, align 32
@tm2_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,tm2-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tm2_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @tm2_pm_prepare, ptr @tm2_pm_complete, ptr @snd_soc_suspend, ptr @snd_soc_resume, ptr @snd_soc_suspend, ptr @snd_soc_resume, ptr @snd_soc_poweroff, ptr @snd_soc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tm2_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @tm2_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tm2_set_bias_level, ptr null, ptr null, ptr null, i32 0, ptr @tm2_dai_links, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr @tm2_speaker_amp_dev, i32 1, %struct.list_head zeroinitializer, ptr @tm2_controls, i32 9, ptr @tm2_dapm_widgets, i32 9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mic-bias\00", [23 x i8] zeroinitializer }, align 32
@tm2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get mic bias gpio\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tm2_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/samsung/tm2_wm5110.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr = internal global ptr @tm2_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@tm2_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 522, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Card name is not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.10 = internal global ptr @tm2_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,audio-routing\00", [42 x i8] zeroinitializer }, align 32
@tm2_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Audio routing is not specified or invalid\0A\00", [53 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.14 = internal global ptr @tm2_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audio-amplifier\00", [16 x i8] zeroinitializer }, align 32
@tm2_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"audio-amplifier property invalid or missing\0A\00", [51 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.18 = internal global ptr @tm2_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio-codec\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#sound-dai-cells\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2s-controller\00", [17 x i8] zeroinitializer }, align 32
@tm2_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"i2s-controller property parse error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.24 = internal global ptr @tm2_probe._entry.22, section ".printk_index", align 4
@tm2_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"audio-codec property parse error\0A\00", [62 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.27 = internal global ptr @tm2_probe._entry.25, section ".printk_index", align 4
@tm2_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.29 = internal global ptr @tm2_probe._entry.28, section ".printk_index", align 4
@tm2_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get codec_dai_name\0A\00", [34 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.32 = internal global ptr @tm2_probe._entry.30, section ".printk_index", align 4
@tm2_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tm2_ext_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.58, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 138, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 138, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.60, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 4, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@tm2_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tm2_probe._entry_ptr.35 = internal global ptr @tm2_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to register card\0A\00", [39 x i8] zeroinitializer }, align 32
@tm2_speaker_amp_dev = internal global { %struct.snd_soc_aux_dev, [16 x i8] } zeroinitializer, align 32
@tm2_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.106 to i32) }], [112 x i8] zeroinitializer }, align 32
@tm2_late_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set SYSCLK: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm2_late_probe\00", [17 x i8] zeroinitializer }, align 32
@tm2_late_probe._entry_ptr = internal global ptr @tm2_late_probe._entry, section ".printk_index", align 4
@tm2_late_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set ASYNCCLK: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tm2_late_probe._entry_ptr.41 = internal global ptr @tm2_late_probe._entry.39, section ".printk_index", align 4
@tm2_start_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 45, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set FLL1 source: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tm2_start_sysclk\00", [47 x i8] zeroinitializer }, align 32
@tm2_start_sysclk._entry_ptr = internal global ptr @tm2_start_sysclk._entry, section ".printk_index", align 4
@tm2_start_sysclk._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 54, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to start FLL1: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tm2_start_sysclk._entry_ptr.46 = internal global ptr @tm2_start_sysclk._entry.44, section ".printk_index", align 4
@tm2_start_sysclk._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set SYSCLK source: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tm2_start_sysclk._entry_ptr.49 = internal global ptr @tm2_start_sysclk._entry.47, section ".printk_index", align 4
@tm2_stop_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 78, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to stop FLL1: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tm2_stop_sysclk\00", [16 x i8] zeroinitializer }, align 32
@tm2_stop_sysclk._entry_ptr = internal global ptr @tm2_stop_sysclk._entry, section ".printk_index", align 4
@tm2_stop_sysclk._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to stop SYSCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tm2_stop_sysclk._entry_ptr.54 = internal global ptr @tm2_stop_sysclk._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WM5110 AIF1\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Primary\00", [19 x i8] zeroinitializer }, align 32
@aif1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@aif1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.65 }], [20 x i8] zeroinitializer }, align 32
@aif1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tm2_aif1_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @tm2_aif1_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WM5110 Voice\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Voice call\00", [21 x i8] zeroinitializer }, align 32
@voice_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@voice_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.68 }], [20 x i8] zeroinitializer }, align 32
@voice_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tm2_aif2_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @tm2_aif2_hw_params, ptr @tm2_aif2_hw_free, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WM5110 BT\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bluetooth\00", [22 x i8] zeroinitializer }, align 32
@bt_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@bt_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.81 }], [20 x i8] zeroinitializer }, align 32
@bt_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@hdmi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hdmi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hdmi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tm2_hdmi_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @tm2_hdmi_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm2_dai_links = internal global { [4 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [112 x i8] } { [4 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.55, ptr @.str.56, ptr @aif1_cpus, i32 1, ptr @aif1_codecs, i32 1, ptr @aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @tm2_aif1_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.57, ptr @.str.58, ptr @voice_cpus, i32 1, ptr @voice_codecs, i32 1, ptr @voice_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @tm2_aif2_ops, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.59, ptr @.str.60, ptr @bt_cpus, i32 1, ptr @bt_codecs, i32 1, ptr @bt_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.61, ptr @.str.62, ptr @hdmi_cpus, i32 1, ptr @hdmi_codecs, i32 1, ptr @hdmi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @tm2_hdmi_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [112 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-i2s\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5110-aif1\00", [20 x i8] zeroinitializer }, align 32
@tm2_aif1_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not supported sample rate: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm2_aif1_hw_params\00", [45 x i8] zeroinitializer }, align 32
@tm2_aif1_hw_params._entry_ptr = internal global ptr @tm2_aif1_hw_params._entry, section ".printk_index", align 4
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5110-aif2\00", [20 x i8] zeroinitializer }, align 32
@tm2_aif2_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.69, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm2_aif2_hw_params\00", [45 x i8] zeroinitializer }, align 32
@tm2_aif2_hw_params._entry_ptr = internal global ptr @tm2_aif2_hw_params._entry, section ".printk_index", align 4
@tm2_aif2_hw_params._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set FLL2 source: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tm2_aif2_hw_params._entry_ptr.72 = internal global ptr @tm2_aif2_hw_params._entry.70, section ".printk_index", align 4
@tm2_aif2_hw_params._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.4, i32 172, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to start FLL2: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tm2_aif2_hw_params._entry_ptr.75 = internal global ptr @tm2_aif2_hw_params._entry.73, section ".printk_index", align 4
@tm2_aif2_hw_params._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set ASYNCCLK source: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tm2_aif2_hw_params._entry_ptr.78 = internal global ptr @tm2_aif2_hw_params._entry.76, section ".printk_index", align 4
@tm2_aif2_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to stop FLL2: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tm2_aif2_hw_free\00", [47 x i8] zeroinitializer }, align 32
@tm2_aif2_hw_free._entry_ptr = internal global ptr @tm2_aif2_hw_free._entry, section ".printk_index", align 4
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5110-aif3\00", [20 x i8] zeroinitializer }, align 32
@tm2_hdmi_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid bit-width: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm2_hdmi_hw_params\00", [45 x i8] zeroinitializer }, align 32
@tm2_hdmi_hw_params._entry_ptr = internal global ptr @tm2_hdmi_hw_params._entry, section ".printk_index", align 4
@tm2_hdmi_hw_params._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported bit-width: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tm2_hdmi_hw_params._entry_ptr.86 = internal global ptr @tm2_hdmi_hw_params._entry.84, section ".printk_index", align 4
@tm2_hdmi_hw_params._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported sample rate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tm2_hdmi_hw_params._entry_ptr.89 = internal global ptr @tm2_hdmi_hw_params._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP Switch\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPK Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RCV Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCV\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VPS Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPS\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Main Mic Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main Mic\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sub Mic Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub Mic\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Third Mic Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Third Mic\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@tm2_dapm_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @tm2_mic_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [16 x i64] [i64 14, i64 32, i64 4000, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 11025, i64 12000, i64 16000]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 48]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.113 = private unnamed_addr constant [11 x i8] c"tm2_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 661, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 663, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"tm2_of_match\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 655, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"tm2_pm_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 644, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant [9 x i8] c"tm2_card\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 481, i32 28 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 514, i32 44 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 516, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 520, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 522, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 526, i32 45 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 528, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 533, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 535, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 539, i32 56 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 545, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 553, i32 50 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 556, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 565, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 595, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 601, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [14 x i8] c"tm2_component\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 381, i32 46 }
@___asan_gen_.209 = private unnamed_addr constant [12 x i8] c"tm2_ext_dai\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 385, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 609, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 615, i32 27 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"tm2_speaker_amp_dev\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 305, i32 31 }
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"tm2_controls\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 353, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 323, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 332, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 45, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 54, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 63, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 78, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 85, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 450, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 451, i32 18 }
@___asan_gen_.284 = private unnamed_addr constant [10 x i8] c"aif1_cpus\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [12 x i8] c"aif1_codecs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [15 x i8] c"aif1_platforms\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [13 x i8] c"tm2_aif1_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 129, i32 33 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 457, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 458, i32 18 }
@___asan_gen_.302 = private unnamed_addr constant [11 x i8] c"voice_cpus\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"voice_codecs\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [16 x i8] c"voice_platforms\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"tm2_aif2_ops\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 203, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 465, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 466, i32 18 }
@___asan_gen_.320 = private unnamed_addr constant [8 x i8] c"bt_cpus\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [10 x i8] c"bt_codecs\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [13 x i8] c"bt_platforms\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 472, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 473, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant [10 x i8] c"hdmi_cpus\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [12 x i8] c"hdmi_codecs\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [15 x i8] c"hdmi_platforms\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 443, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [13 x i8] c"tm2_hdmi_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 257, i32 33 }
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"tm2_dai_links\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 448, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 428, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 121, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 433, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 153, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 163, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 172, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 181, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 198, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 438, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 218, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 230, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 240, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 354, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 355, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 356, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 357, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 358, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 360, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 361, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 362, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 364, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"tm2_dapm_widgets\00", align 1
@___asan_gen_.477 = private constant [34 x i8] c"../sound/soc/samsung/tm2_wm5110.c\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 367, i32 41 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_tm2_driver_exit, ptr @__initcall__kmod_snd_soc_tm2_wm5110__294_669_tm2_driver_init6, ptr @tm2_aif1_hw_params._entry, ptr @tm2_aif1_hw_params._entry_ptr, ptr @tm2_aif2_hw_free._entry, ptr @tm2_aif2_hw_free._entry_ptr, ptr @tm2_aif2_hw_params._entry, ptr @tm2_aif2_hw_params._entry.70, ptr @tm2_aif2_hw_params._entry.73, ptr @tm2_aif2_hw_params._entry.76, ptr @tm2_aif2_hw_params._entry_ptr, ptr @tm2_aif2_hw_params._entry_ptr.72, ptr @tm2_aif2_hw_params._entry_ptr.75, ptr @tm2_aif2_hw_params._entry_ptr.78, ptr @tm2_driver_exit, ptr @tm2_hdmi_hw_params._entry, ptr @tm2_hdmi_hw_params._entry.84, ptr @tm2_hdmi_hw_params._entry.87, ptr @tm2_hdmi_hw_params._entry_ptr, ptr @tm2_hdmi_hw_params._entry_ptr.86, ptr @tm2_hdmi_hw_params._entry_ptr.89, ptr @tm2_late_probe._entry, ptr @tm2_late_probe._entry.39, ptr @tm2_late_probe._entry_ptr, ptr @tm2_late_probe._entry_ptr.41, ptr @tm2_probe._entry, ptr @tm2_probe._entry.12, ptr @tm2_probe._entry.16, ptr @tm2_probe._entry.22, ptr @tm2_probe._entry.25, ptr @tm2_probe._entry.28, ptr @tm2_probe._entry.30, ptr @tm2_probe._entry.33, ptr @tm2_probe._entry.8, ptr @tm2_probe._entry_ptr, ptr @tm2_probe._entry_ptr.10, ptr @tm2_probe._entry_ptr.14, ptr @tm2_probe._entry_ptr.18, ptr @tm2_probe._entry_ptr.24, ptr @tm2_probe._entry_ptr.27, ptr @tm2_probe._entry_ptr.29, ptr @tm2_probe._entry_ptr.32, ptr @tm2_probe._entry_ptr.35, ptr @tm2_start_sysclk._entry, ptr @tm2_start_sysclk._entry.44, ptr @tm2_start_sysclk._entry.47, ptr @tm2_start_sysclk._entry_ptr, ptr @tm2_start_sysclk._entry_ptr.46, ptr @tm2_start_sysclk._entry_ptr.49, ptr @tm2_stop_sysclk._entry, ptr @tm2_stop_sysclk._entry.52, ptr @tm2_stop_sysclk._entry_ptr, ptr @tm2_stop_sysclk._entry_ptr.54, ptr @tm2_driver, ptr @.str, ptr @tm2_of_match, ptr @tm2_pm_ops, ptr @tm2_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @tm2_component, ptr @tm2_ext_dai, ptr @.str.34, ptr @.str.36, ptr @tm2_speaker_amp_dev, ptr @tm2_controls, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @aif1_cpus, ptr @aif1_codecs, ptr @aif1_platforms, ptr @tm2_aif1_ops, ptr @.str.57, ptr @.str.58, ptr @voice_cpus, ptr @voice_codecs, ptr @voice_platforms, ptr @tm2_aif2_ops, ptr @.str.59, ptr @.str.60, ptr @bt_cpus, ptr @bt_codecs, ptr @bt_platforms, ptr @.str.61, ptr @.str.62, ptr @hdmi_cpus, ptr @hdmi_codecs, ptr @hdmi_platforms, ptr @tm2_hdmi_ops, ptr @tm2_dai_links, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @tm2_dapm_widgets], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_ext_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_speaker_amp_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_late_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_late_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_start_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_start_sysclk._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_start_sysclk._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_stop_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_stop_sysclk._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif1_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif2_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_hdmi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_dai_links to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif1_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif2_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif2_hw_params._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif2_hw_params._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif2_hw_params._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_aif2_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_hdmi_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_hdmi_hw_params._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_hdmi_hw_params._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_dapm_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tm2_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tm2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i223 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %cpu_dai_node = alloca [2 x ptr], align 8
  %codec_dai_node = alloca [2 x ptr], align 8
  %args = alloca %struct.of_phandle_args, align 4
  %args87 = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpu_dai_node) #6
  %0 = ptrtoint ptr %cpu_dai_node to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cpu_dai_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %codec_dai_node) #6
  %1 = ptrtoint ptr %codec_dai_node to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %codec_dai_node, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup136_crit_edge, label %if.end

entry.cleanup136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup136

if.end:                                           ; preds = %entry
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 57), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 5), align 4
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %gpio_mic_bias = getelementptr inbounds %struct.tm2_machine_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_mic_bias to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %gpio_mic_bias, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %3 = ptrtoint ptr %gpio_mic_bias to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_mic_bias, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup136

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @tm2_card, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup136

if.end15:                                         ; preds = %if.end9
  %call16 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @tm2_card, ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup136

if.end22:                                         ; preds = %if.end15
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %8 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i221 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.of_parse_phandle.exit_crit_edge

if.end22.of_parse_phandle.exit_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end22.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ null, %if.end22.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %11 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 30), align 4
  %of_node24 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %of_node24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %of_node24, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 30), align 4
  %of_node28 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %of_node28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node28, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %do.end33, label %if.end34

do.end33:                                         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %cleanup136

if.end34:                                         ; preds = %of_parse_phandle.exit
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call36 = call i32 @of_count_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37 = icmp sgt i32 %call36, 1
  %. = select i1 %cmp37, i32 4, i32 3
  %.str.20. = select i1 %cmp37, ptr @.str.20, ptr null
  store i32 %., ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp41240 = icmp sgt i32 %call36, 0
  br i1 %cmp41240, label %for.body.lr.ph, label %if.end34.land.rhs.preheader_crit_edge

if.end34.land.rhs.preheader_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

for.body.lr.ph:                                   ; preds = %if.end34
  %spec.store.select.i = sext i1 %cmp37 to i32
  br label %for.body

for.cond61.preheader:                             ; preds = %for.inc
  %.pr = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp63242 = icmp sgt i32 %.pr, 0
  br i1 %cmp63242, label %for.cond61.preheader.land.rhs.preheader_crit_edge, label %for.cond61.preheader.for.end84_crit_edge

for.cond61.preheader.for.end84_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

for.cond61.preheader.land.rhs.preheader_crit_edge: ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.cond61.preheader.land.rhs.preheader_crit_edge, %if.end34.land.rhs.preheader_crit_edge
  %18 = phi i32 [ %.pr, %for.cond61.preheader.land.rhs.preheader_crit_edge ], [ %., %if.end34.land.rhs.preheader_crit_edge ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 24), align 4
  %tobool66.not258 = icmp eq ptr %19, null
  br i1 %tobool66.not258, label %land.rhs.preheader.for.end84_crit_edge, label %land.rhs.preheader.for.body67_crit_edge

land.rhs.preheader.for.body67_crit_edge:          ; preds = %land.rhs.preheader
  br label %for.body67

land.rhs.preheader.for.end84_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0241 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #6
  %20 = call ptr @memset(ptr %args, i32 255, i32 72)
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i222 = call i32 @__of_parse_phandle_with_args(ptr noundef %22, ptr noundef nonnull @.str.21, ptr noundef %.str.20., i32 noundef %spec.store.select.i, i32 noundef %i.0241, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool44.not = icmp eq i32 %call.i222, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %i.0241) #9
  br label %cleanup.thread

if.end49:                                         ; preds = %for.body
  %23 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %args, align 4
  %arrayidx50 = getelementptr [2 x ptr], ptr %cpu_dai_node, i32 0, i32 %i.0241
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx50, align 4
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i223) #6
  %28 = call ptr @memset(ptr %args.i223, i32 255, i32 72)
  %call.i224 = call i32 @__of_parse_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef %i.0241, ptr noundef nonnull %args.i223) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool.not.i225 = icmp eq i32 %call.i224, 0
  br i1 %tobool.not.i225, label %of_parse_phandle.exit228, label %of_parse_phandle.exit228.thread

of_parse_phandle.exit228.thread:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i223) #6
  %arrayidx53231 = getelementptr [2 x ptr], ptr %codec_dai_node, i32 0, i32 %i.0241
  %29 = ptrtoint ptr %arrayidx53231 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx53231, align 4
  br label %do.end59

of_parse_phandle.exit228:                         ; preds = %if.end49
  %30 = ptrtoint ptr %args.i223 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args.i223, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i223) #6
  %arrayidx53 = getelementptr [2 x ptr], ptr %codec_dai_node, i32 0, i32 %i.0241
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx53, align 4
  %tobool55.not = icmp eq ptr %31, null
  br i1 %tobool55.not, label %of_parse_phandle.exit228.do.end59_crit_edge, label %for.inc

of_parse_phandle.exit228.do.end59_crit_edge:      ; preds = %of_parse_phandle.exit228
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59

do.end59:                                         ; preds = %of_parse_phandle.exit228.do.end59_crit_edge, %of_parse_phandle.exit228.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end59, %do.end48
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  br label %dai_node_put

for.inc:                                          ; preds = %of_parse_phandle.exit228
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  %inc = add nuw nsw i32 %i.0241, 1
  %exitcond.not = icmp eq i32 %inc, %call36
  br i1 %exitcond.not, label %for.cond61.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.rhs:                                         ; preds = %if.end73
  %33 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 24), align 4
  %arrayidx65 = getelementptr %struct.snd_soc_dai_link, ptr %33, i32 %inc83
  %tobool66.not = icmp eq ptr %arrayidx65, null
  br i1 %tobool66.not, label %land.rhs.for.end84_crit_edge, label %land.rhs.for.body67_crit_edge

land.rhs.for.body67_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

land.rhs.for.end84_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

for.body67:                                       ; preds = %land.rhs.for.body67_crit_edge, %land.rhs.preheader.for.body67_crit_edge
  %34 = phi ptr [ %33, %land.rhs.for.body67_crit_edge ], [ %19, %land.rhs.preheader.for.body67_crit_edge ]
  %i.1243259 = phi i32 [ %inc83, %land.rhs.for.body67_crit_edge ], [ 0, %land.rhs.preheader.for.body67_crit_edge ]
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %34, i32 %i.1243259, i32 2
  %35 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpus, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %36, align 4
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %34, i32 %i.1243259, i32 6
  %38 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platforms, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %39, align 4
  br i1 %cmp37, label %land.lhs.true, label %for.body67.if.end73_crit_edge

for.body67.if.end73_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.lhs.true:                                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  %41 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 25), align 4
  %sub = add i32 %41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1243259, i32 %sub)
  %cmp71 = icmp eq i32 %i.1243259, %sub
  %spec.select = zext i1 %cmp71 to i32
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true, %for.body67.if.end73_crit_edge
  %dai_index.0 = phi i32 [ 0, %for.body67.if.end73_crit_edge ], [ %spec.select, %land.lhs.true ]
  %arrayidx74 = getelementptr [2 x ptr], ptr %codec_dai_node, i32 0, i32 %dai_index.0
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx74, align 4
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %34, i32 %i.1243259, i32 4
  %44 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %codecs, align 4
  %of_node75 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %of_node75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %of_node75, align 4
  %arrayidx76 = getelementptr [2 x ptr], ptr %cpu_dai_node, i32 0, i32 %dai_index.0
  %47 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx76, align 4
  %49 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpus, align 4
  %of_node78 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %of_node78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %of_node78, align 4
  %52 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platforms, align 4
  %of_node81 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %of_node81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %of_node81, align 4
  %inc83 = add nuw nsw i32 %i.1243259, 1
  %55 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc83, i32 %55)
  %cmp63 = icmp slt i32 %inc83, %55
  br i1 %cmp63, label %land.rhs, label %if.end73.for.end84_crit_edge

if.end73.for.end84_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

for.end84:                                        ; preds = %if.end73.for.end84_crit_edge, %land.rhs.for.end84_crit_edge, %land.rhs.preheader.for.end84_crit_edge, %for.cond61.preheader.for.end84_crit_edge
  %.lcssa = phi i32 [ %.pr, %for.cond61.preheader.for.end84_crit_edge ], [ %18, %land.rhs.preheader.for.end84_crit_edge ], [ %55, %land.rhs.for.end84_crit_edge ], [ %55, %if.end73.for.end84_crit_edge ]
  br i1 %cmp37, label %if.then86, label %for.end84.if.end111_crit_edge

for.end84.if.end111_crit_edge:                    ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then86:                                        ; preds = %for.end84
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args87) #6
  %56 = call ptr @memset(ptr %args87, i32 255, i32 72)
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node, align 8
  %call.i229 = call i32 @__of_parse_phandle_with_args(ptr noundef %58, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool92.not = icmp eq i32 %call.i229, 0
  br i1 %tobool92.not, label %if.end97, label %if.then86.cleanup108.thread_crit_edge

if.then86.cleanup108.thread_crit_edge:            ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108.thread

if.end97:                                         ; preds = %if.then86
  %sub89 = add i32 %.lcssa, -1
  %59 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 24), align 4
  %codecs100 = getelementptr %struct.snd_soc_dai_link, ptr %59, i32 %sub89, i32 4
  %60 = ptrtoint ptr %codecs100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %codecs100, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %61, i32 0, i32 2
  %call101 = call i32 @snd_soc_get_dai_name(ptr noundef nonnull %args87, ptr noundef %dai_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %cleanup108, label %if.end97.cleanup108.thread_crit_edge

if.end97.cleanup108.thread_crit_edge:             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108.thread

cleanup108.thread:                                ; preds = %if.end97.cleanup108.thread_crit_edge, %if.then86.cleanup108.thread_crit_edge
  %.str.26.sink = phi ptr [ @.str.26, %if.then86.cleanup108.thread_crit_edge ], [ @.str.31, %if.end97.cleanup108.thread_crit_edge ]
  %ret.1.ph = phi i32 [ %call.i229, %if.then86.cleanup108.thread_crit_edge ], [ %call101, %if.end97.cleanup108.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.26.sink) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args87) #6
  br label %dai_node_put

cleanup108:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args87) #6
  br label %if.end111

if.end111:                                        ; preds = %cleanup108, %for.end84.if.end111_crit_edge
  %call112 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @tm2_component, ptr noundef nonnull @tm2_ext_dai, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end117, label %if.end118

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call112) #9
  br label %dai_node_put

if.end118:                                        ; preds = %if.end111
  %call119 = call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull @tm2_card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.then121, label %if.end118.dai_node_put_crit_edge

if.end118.dai_node_put_crit_edge:                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %dai_node_put

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call119, ptr noundef nonnull @.str.36) #6
  br label %dai_node_put

dai_node_put:                                     ; preds = %if.then121, %if.end118.dai_node_put_crit_edge, %do.end117, %cleanup108.thread, %cleanup.thread
  %ret.2 = phi i32 [ %call112, %do.end117 ], [ %call119, %if.then121 ], [ %call119, %if.end118.dai_node_put_crit_edge ], [ -22, %cleanup.thread ], [ %ret.1.ph, %cleanup108.thread ]
  br i1 %cmp41240, label %dai_node_put.for.body126_crit_edge, label %dai_node_put.for.end131_crit_edge

dai_node_put.for.end131_crit_edge:                ; preds = %dai_node_put
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end131

dai_node_put.for.body126_crit_edge:               ; preds = %dai_node_put
  br label %for.body126

for.body126:                                      ; preds = %for.body126.for.body126_crit_edge, %dai_node_put.for.body126_crit_edge
  %i.2246 = phi i32 [ %inc130, %for.body126.for.body126_crit_edge ], [ 0, %dai_node_put.for.body126_crit_edge ]
  %arrayidx127 = getelementptr [2 x ptr], ptr %codec_dai_node, i32 0, i32 %i.2246
  %62 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx127, align 4
  call void @of_node_put(ptr noundef %63) #6
  %arrayidx128 = getelementptr [2 x ptr], ptr %cpu_dai_node, i32 0, i32 %i.2246
  %64 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx128, align 4
  call void @of_node_put(ptr noundef %65) #6
  %inc130 = add nuw nsw i32 %i.2246, 1
  %exitcond250.not = icmp eq i32 %inc130, %call36
  br i1 %exitcond250.not, label %for.body126.for.end131_crit_edge, label %for.body126.for.body126_crit_edge

for.body126.for.body126_crit_edge:                ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body126

for.body126.for.end131_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end131

for.end131:                                       ; preds = %for.body126.for.end131_crit_edge, %dai_node_put.for.end131_crit_edge
  %66 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @tm2_card, i32 0, i32 30), align 4
  %of_node135 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %of_node135 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node135, align 4
  call void @of_node_put(ptr noundef %68) #6
  br label %cleanup136

cleanup136:                                       ; preds = %for.end131, %do.end33, %do.end21, %do.end14, %do.end, %entry.cleanup136_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %call10, %do.end14 ], [ %call16, %do.end21 ], [ %ret.2, %for.end131 ], [ -22, %do.end33 ], [ -12, %entry.cleanup136_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %codec_dai_node) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpu_dai_node) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_late_probe(ptr noundef %card) #2 align 64 {
entry:
  %ch_map = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ch_map) #6
  %2 = ptrtoint ptr %ch_map to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %ch_map, align 8
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %3 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dai_link, align 4
  %call1 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %4) #6
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call1, i32 0, i32 9
  %5 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call1, i32 0, i32 11
  %7 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cpus, align 4
  %arrayidx2 = getelementptr ptr, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %component, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %1, align 4
  %call8 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %10, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %call8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_link, align 4
  %arrayidx10 = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 1
  %call11 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx10) #6
  %dais12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call11, i32 0, i32 9
  %18 = ptrtoint ptr %dais12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais12, align 4
  %num_cpus13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call11, i32 0, i32 11
  %20 = ptrtoint ptr %num_cpus13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cpus13, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %23, i32 noundef 2, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.40, i32 noundef %call16) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %call24 = tail call ptr @snd_soc_find_dai(ptr noundef nonnull @tm2_speaker_amp_dev) #6
  %tobool.not = icmp eq ptr %call24, null
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %call27 = call i32 @snd_soc_dai_set_channel_map(ptr noundef nonnull %call24, i32 noundef 2, ptr noundef nonnull %ch_map, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %call24, i32 noundef 3, i32 noundef 0, i32 noundef 2, i32 noundef 16) #6
  %26 = call i32 @llvm.smin.i32(i32 %call31, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end21, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call16, %do.end21 ], [ -19, %if.end23.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %26, %if.end30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ch_map) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_set_bias_level(ptr noundef %card, ptr nocapture noundef readonly %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %cmp.not = icmp eq ptr %3, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dapm3 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 50
  %13 = ptrtoint ptr %dapm3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dapm3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @tm2_start_sysclk(ptr noundef %card)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %15 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call2.i = tail call i32 @snd_soc_component_set_pll(ptr noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.50, i32 noundef %call2.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb8
  %call3.i = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %18, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.snd_soc_component, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef %call3.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end8.i, %if.end.i.cleanup_crit_edge, %do.end.i, %if.then5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_find_dai(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_channel_map(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tm2_start_sysclk(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sysclk_rate = getelementptr inbounds %struct.tm2_machine_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_rate, align 4
  %call2 = tail call i32 @snd_soc_component_set_pll(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef 24000000, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk_rate, align 4
  %call4 = tail call i32 @snd_soc_component_set_pll(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 24000000, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.45, i32 noundef %call4) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %12 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysclk_rate, align 4
  %call13 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %3, i32 noundef 1, i32 noundef 4, i32 noundef %13, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef %call13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ %call13, %do.end18 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_aif1_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %7, label %do.end [
    i32 4000, label %entry.sw.epilog_crit_edge
    i32 8000, label %entry.sw.epilog_crit_edge16
    i32 12000, label %entry.sw.epilog_crit_edge17
    i32 16000, label %entry.sw.epilog_crit_edge18
    i32 24000, label %entry.sw.epilog_crit_edge19
    i32 32000, label %entry.sw.epilog_crit_edge20
    i32 48000, label %entry.sw.epilog_crit_edge21
    i32 96000, label %entry.sw.epilog_crit_edge22
    i32 192000, label %entry.sw.epilog_crit_edge23
    i32 11025, label %entry.sw.bb3_crit_edge
    i32 22050, label %entry.sw.bb3_crit_edge24
    i32 44100, label %entry.sw.bb3_crit_edge25
    i32 88200, label %entry.sw.bb3_crit_edge26
    i32 176400, label %entry.sw.bb3_crit_edge27
  ]

entry.sw.bb3_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge24, %entry.sw.bb3_crit_edge25, %entry.sw.bb3_crit_edge26, %entry.sw.bb3_crit_edge27
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.66, i32 noundef %7) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge16, %entry.sw.epilog_crit_edge17, %entry.sw.epilog_crit_edge18, %entry.sw.epilog_crit_edge19, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21, %entry.sw.epilog_crit_edge22, %entry.sw.epilog_crit_edge23
  %.sink = phi i32 [ 135475200, %sw.bb3 ], [ 147456000, %entry.sw.epilog_crit_edge ], [ 147456000, %entry.sw.epilog_crit_edge16 ], [ 147456000, %entry.sw.epilog_crit_edge17 ], [ 147456000, %entry.sw.epilog_crit_edge18 ], [ 147456000, %entry.sw.epilog_crit_edge19 ], [ 147456000, %entry.sw.epilog_crit_edge20 ], [ 147456000, %entry.sw.epilog_crit_edge21 ], [ 147456000, %entry.sw.epilog_crit_edge22 ], [ 147456000, %entry.sw.epilog_crit_edge23 ]
  %sysclk_rate4 = getelementptr inbounds %struct.tm2_machine_priv, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %sysclk_rate4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %sysclk_rate4, align 4
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call7 = tail call fastcc i32 @tm2_start_sysclk(ptr noundef %21)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call7, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_aif2_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %component1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %11, label %do.end [
    i32 8000, label %entry.sw.epilog_crit_edge
    i32 12000, label %entry.sw.epilog_crit_edge47
    i32 16000, label %entry.sw.epilog_crit_edge48
    i32 11025, label %sw.bb2
  ]

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.66, i32 noundef %11) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge47, %entry.sw.epilog_crit_edge48
  %asyncclk_rate.0 = phi i32 [ 45158400, %sw.bb2 ], [ 49152000, %entry.sw.epilog_crit_edge ], [ 49152000, %entry.sw.epilog_crit_edge47 ], [ 49152000, %entry.sw.epilog_crit_edge48 ]
  %call4 = tail call i32 @snd_soc_component_set_pll(ptr noundef %9, i32 noundef 4, i32 noundef 0, i32 noundef 24000000, i32 noundef %asyncclk_rate.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end7, label %if.end

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.71, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %call9 = tail call i32 @snd_soc_component_set_pll(ptr noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef 24000000, i32 noundef %asyncclk_rate.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.74, i32 noundef %call9) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %9, i32 noundef 2, i32 noundef 5, i32 noundef %asyncclk_rate.0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.77, i32 noundef %call17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end16.cleanup_crit_edge, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %do.end7 ], [ %call9, %do.end14 ], [ %call17, %do.end22 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_aif2_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_set_pll(ptr noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.79, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_hdmi_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.if.then.i.i_crit_edge ], [ %10, %for.inc.i.i.if.then.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !234
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call1 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.82, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %15 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call1, label %do.end5 [
    i32 48, label %if.end.sw.epilog_crit_edge
    i32 16, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %card6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card6, align 4
  %dev7 = getelementptr inbounds %struct.snd_soc_card, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.85, i32 noundef %call1) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %bfs.0 = phi i32 [ 32, %sw.bb2 ], [ 64, %if.end.sw.epilog_crit_edge ]
  %arrayidx.i.i43 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i43, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %21, label %do.end13 [
    i32 48000, label %sw.epilog.sw.epilog17_crit_edge
    i32 96000, label %sw.epilog.sw.epilog17_crit_edge45
    i32 192000, label %sw.epilog.sw.epilog17_crit_edge46
  ]

sw.epilog.sw.epilog17_crit_edge46:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

sw.epilog.sw.epilog17_crit_edge45:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

sw.epilog.sw.epilog17_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %card14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %card14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card14, align 4
  %dev15 = getelementptr inbounds %struct.snd_soc_card, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.88, i32 noundef %21) #9
  br label %cleanup

sw.epilog17:                                      ; preds = %sw.epilog.sw.epilog17_crit_edge, %sw.epilog.sw.epilog17_crit_edge45, %sw.epilog.sw.epilog17_crit_edge46
  %call18 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %sw.epilog17.cleanup_crit_edge, label %if.end21

sw.epilog17.cleanup_crit_edge:                    ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @snd_soc_dai_set_clkdiv(ptr noundef %5, i32 noundef 1, i32 noundef %bfs.0) #6
  %27 = tail call i32 @llvm.smin.i32(i32 %call22, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %sw.epilog17.cleanup_crit_edge, %do.end13, %do.end5, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %do.end5 ], [ -22, %do.end13 ], [ %call18, %sw.epilog17.cleanup_crit_edge ], [ %27, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_clkdiv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_mic_bias(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink5 = phi i32 [ 0, %sw.bb2 ], [ %event, %entry.sw.epilog.sink.split_crit_edge ]
  %gpio_mic_bias3 = getelementptr inbounds %struct.tm2_machine_priv, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %gpio_mic_bias3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_mic_bias3, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef %.sink5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_pm_prepare(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2.i = tail call i32 @snd_soc_component_set_pll(ptr noundef %5, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %call2.i) #9
  br label %tm2_stop_sysclk.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %5, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.tm2_stop_sysclk.exit_crit_edge

if.end.i.tm2_stop_sysclk.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tm2_stop_sysclk.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %call3.i) #9
  br label %tm2_stop_sysclk.exit

tm2_stop_sysclk.exit:                             ; preds = %do.end8.i, %if.end.i.tm2_stop_sysclk.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ %call3.i, %do.end8.i ], [ 0, %if.end.i.tm2_stop_sysclk.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm2_pm_complete(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @tm2_start_sysclk(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_poweroff(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !219, !221, !223}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__initcall__kmod_snd_soc_tm2_wm5110__294_669_tm2_driver_init6, !1, !"__initcall__kmod_snd_soc_tm2_wm5110__294_669_tm2_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_tm2_driver_exit, !1, !"__exitcall_tm2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 663, i32 12}
!12 = !{ptr @tm2_driver, !13, !"tm2_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 661, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 514, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 516, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tm2_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tm2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 520, i32 41}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 522, i32 3}
!28 = !{ptr @tm2_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tm2_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 526, i32 45}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 528, i32 3}
!34 = !{ptr @tm2_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tm2_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 533, i32 8}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 535, i32 3}
!40 = !{ptr @tm2_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tm2_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 539, i32 56}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 545, i32 16}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 553, i32 50}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 556, i32 4}
!50 = !{ptr @tm2_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tm2_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 565, i32 4}
!54 = !{ptr @tm2_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tm2_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @tm2_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 595, i32 4}
!58 = !{ptr @tm2_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 601, i32 4}
!61 = !{ptr @tm2_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tm2_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 609, i32 3}
!65 = !{ptr @tm2_probe._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tm2_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 615, i32 27}
!69 = !{ptr @tm2_card, !70, !"tm2_card", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 481, i32 28}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 323, i32 3}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tm2_late_probe._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @tm2_late_probe._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 332, i32 3}
!78 = !{ptr @tm2_late_probe._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tm2_late_probe._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 45, i32 3}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tm2_start_sysclk._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @tm2_start_sysclk._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 54, i32 3}
!87 = !{ptr @tm2_start_sysclk._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @tm2_start_sysclk._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 63, i32 3}
!91 = !{ptr @tm2_start_sysclk._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @tm2_start_sysclk._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 78, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tm2_stop_sysclk._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @tm2_stop_sysclk._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 85, i32 3}
!100 = !{ptr @tm2_stop_sysclk._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tm2_stop_sysclk._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 450, i32 12}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 451, i32 18}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 457, i32 12}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 458, i32 18}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 465, i32 12}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 466, i32 18}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 472, i32 12}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 473, i32 18}
!118 = !{ptr @tm2_dai_links, !119, !"tm2_dai_links", i1 false, i1 false}
!119 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 448, i32 32}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 428, i32 1}
!122 = !{ptr @aif1_cpus, !121, !"aif1_cpus", i1 false, i1 false}
!123 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @aif1_codecs, !121, !"aif1_codecs", i1 false, i1 false}
!125 = !{ptr @aif1_platforms, !121, !"aif1_platforms", i1 false, i1 false}
!126 = !{ptr @tm2_aif1_ops, !127, !"tm2_aif1_ops", i1 false, i1 false}
!127 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 129, i32 33}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 121, i32 3}
!130 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @tm2_aif1_hw_params._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @tm2_aif1_hw_params._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @voice_cpus, !134, !"voice_cpus", i1 false, i1 false}
!134 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 433, i32 1}
!135 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @voice_codecs, !134, !"voice_codecs", i1 false, i1 false}
!137 = !{ptr @voice_platforms, !134, !"voice_platforms", i1 false, i1 false}
!138 = !{ptr @tm2_aif2_ops, !139, !"tm2_aif2_ops", i1 false, i1 false}
!139 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 203, i32 33}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 153, i32 3}
!142 = !{ptr @tm2_aif2_hw_params._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @tm2_aif2_hw_params._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 163, i32 3}
!146 = !{ptr @tm2_aif2_hw_params._entry.70, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @tm2_aif2_hw_params._entry_ptr.72, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 172, i32 3}
!150 = !{ptr @tm2_aif2_hw_params._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tm2_aif2_hw_params._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 181, i32 3}
!154 = !{ptr @tm2_aif2_hw_params._entry.76, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tm2_aif2_hw_params._entry_ptr.78, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 198, i32 3}
!158 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @tm2_aif2_hw_free._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @tm2_aif2_hw_free._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @bt_cpus, !162, !"bt_cpus", i1 false, i1 false}
!162 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 438, i32 1}
!163 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @bt_codecs, !162, !"bt_codecs", i1 false, i1 false}
!165 = !{ptr @bt_platforms, !162, !"bt_platforms", i1 false, i1 false}
!166 = !{ptr @hdmi_cpus, !167, !"hdmi_cpus", i1 false, i1 false}
!167 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 443, i32 1}
!168 = !{ptr @hdmi_codecs, !167, !"hdmi_codecs", i1 false, i1 false}
!169 = !{ptr @hdmi_platforms, !167, !"hdmi_platforms", i1 false, i1 false}
!170 = !{ptr @tm2_hdmi_ops, !171, !"tm2_hdmi_ops", i1 false, i1 false}
!171 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 257, i32 33}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 218, i32 3}
!174 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @tm2_hdmi_hw_params._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @tm2_hdmi_hw_params._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 230, i32 3}
!179 = !{ptr @tm2_hdmi_hw_params._entry.84, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @tm2_hdmi_hw_params._entry_ptr.86, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 240, i32 3}
!183 = !{ptr @tm2_hdmi_hw_params._entry.87, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @tm2_hdmi_hw_params._entry_ptr.89, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @tm2_speaker_amp_dev, !186, !"tm2_speaker_amp_dev", i1 false, i1 false}
!186 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 305, i32 31}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 354, i32 2}
!189 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 355, i32 2}
!192 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 356, i32 2}
!195 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 357, i32 2}
!198 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 358, i32 2}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 360, i32 2}
!203 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 361, i32 2}
!206 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 362, i32 2}
!209 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 364, i32 2}
!212 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @tm2_controls, !214, !"tm2_controls", i1 false, i1 false}
!214 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 353, i32 38}
!215 = !{ptr @tm2_dapm_widgets, !216, !"tm2_dapm_widgets", i1 false, i1 false}
!216 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 367, i32 41}
!217 = !{ptr @tm2_component, !218, !"tm2_component", i1 false, i1 false}
!218 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 381, i32 46}
!219 = !{ptr @tm2_ext_dai, !220, !"tm2_ext_dai", i1 false, i1 false}
!220 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 385, i32 34}
!221 = !{ptr @tm2_of_match, !222, !"tm2_of_match", i1 false, i1 false}
!222 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 655, i32 34}
!223 = !{ptr @tm2_pm_ops, !224, !"tm2_pm_ops", i1 false, i1 false}
!224 = !{!"../sound/soc/samsung/tm2_wm5110.c", i32 644, i32 32}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i32 0, i32 33}
