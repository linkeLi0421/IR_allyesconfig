; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/snow.c_pt.bc'
source_filename = "../sound/soc/samsung/snow.c"
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
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snow_priv = type { %struct.snd_soc_dai_link, ptr }
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

@__initcall__kmod_snd_soc_snow__238_254_snow_driver_init6 = internal global ptr @snow_driver_init, section ".initcall6.init", align 4
@snow_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snow_probe, ptr @snow_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snow_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_snow_driver_exit = internal global ptr @snow_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [64 x i8] c"snd_soc_snow.description=ALSA SoC Audio machine driver for Snow\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [49 x i8] c"snd_soc_snow.file=sound/soc/samsung/snd-soc-snow\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [25 x i8] c"snd_soc_snow.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snow-audio\00", [21 x i8] zeroinitializer }, align 32
@snow_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,snow-audio-max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,snow-audio-max98091\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,snow-audio-max98095\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@snow_snd = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.25, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @snow_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Primary\00", [24 x i8] zeroinitializer }, align 32
@links_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@links_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@links_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@snow_card_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @snow_card_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sound-dai\00", [22 x i8] zeroinitializer }, align 32
@snow_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 167, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed parsing cpu/sound-dai property\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snow_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/samsung/snow.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snow_probe._entry_ptr = internal global ptr @snow_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@snow_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed parsing codec node\0A\00", [37 x i8] zeroinitializer }, align 32
@snow_probe._entry_ptr.12 = internal global ptr @snow_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s_opclk0\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,i2s-controller\00", [41 x i8] zeroinitializer }, align 32
@snow_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 194, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2s-controller property parse error\0A\00", [59 x i8] zeroinitializer }, align 32
@snow_probe._entry_ptr.18 = internal global ptr @snow_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,audio-codec\00", [44 x i8] zeroinitializer }, align 32
@snow_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"audio-codec property parse error\0A\00", [62 x i8] zeroinitializer }, align 32
@snow_probe._entry_ptr.22 = internal global ptr @snow_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung,model\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_soc_register_card failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Snow-I2S\00", [23 x i8] zeroinitializer }, align 32
@snow_card_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 42, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid bit-width: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snow_card_hw_params\00", [44 x i8] zeroinitializer }, align 32
@snow_card_hw_params._entry_ptr = internal global ptr @snow_card_hw_params._entry, section ".printk_index", align 4
@snow_card_hw_params._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 47, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported bit-width: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@snow_card_hw_params._entry_ptr.30 = internal global ptr @snow_card_hw_params._entry.28, section ".printk_index", align 4
@snow_card_hw_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.6, i32 87, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported RCLK rate: %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@snow_card_hw_params._entry_ptr.33 = internal global ptr @snow_card_hw_params._entry.31, section ".printk_index", align 4
@snow_card_hw_params._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.6, i32 93, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2S bus clock rate set failed\0A\00", [33 x i8] zeroinitializer }, align 32
@snow_card_hw_params._entry_ptr.36 = internal global ptr @snow_card_hw_params._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.37 = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 49152000, i64 67737600, i64 73728000]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 49152000, i64 67737600, i64 73728000]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 49152000, i64 67737600, i64 73728000]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 49152000, i64 67737600, i64 73728000]
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"snow_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 244, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 246, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"snow_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 236, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"snow_snd\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 119, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 143, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"links_cpus\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"links_codecs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"links_platforms\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 17, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 158, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"snow_card_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 100, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 163, i32 47 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 167, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 171, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 177, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 182, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 189, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 192, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 194, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 199, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 202, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 210, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 217, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 120, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 42, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 47, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 87, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [28 x i8] c"../sound/soc/samsung/snow.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 93, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_snow_driver_exit, ptr @__initcall__kmod_snd_soc_snow__238_254_snow_driver_init6, ptr @snow_card_hw_params._entry, ptr @snow_card_hw_params._entry.28, ptr @snow_card_hw_params._entry.31, ptr @snow_card_hw_params._entry.34, ptr @snow_card_hw_params._entry_ptr, ptr @snow_card_hw_params._entry_ptr.30, ptr @snow_card_hw_params._entry_ptr.33, ptr @snow_card_hw_params._entry_ptr.36, ptr @snow_driver_exit, ptr @snow_probe._entry, ptr @snow_probe._entry.10, ptr @snow_probe._entry.16, ptr @snow_probe._entry.20, ptr @snow_probe._entry_ptr, ptr @snow_probe._entry_ptr.12, ptr @snow_probe._entry_ptr.18, ptr @snow_probe._entry_ptr.22, ptr @snow_driver, ptr @.str, ptr @snow_of_match, ptr @snow_snd, ptr @.str.1, ptr @links_cpus, ptr @links_codecs, ptr @links_platforms, ptr @.str.2, ptr @snow_card_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_snd to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @links_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @links_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @links_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_card_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_card_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_card_hw_params._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_card_hw_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snow_card_hw_params._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snow_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snow_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snow_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @snow_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snow_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i144 = alloca %struct.of_phandle_args, align 4
  %args.i138 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dai_fmt = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16385, ptr %dai_fmt, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %call.i, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %stream_name, align 4
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @links_cpus, ptr %cpus, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_cpus, align 4
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @links_codecs, ptr %codecs, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_codecs, align 4
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @links_platforms, ptr %platforms, align 4
  %num_platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_platforms, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 24), align 4
  store i32 1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 25), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 5), align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef %10, ptr noundef nonnull @.str.2) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snow_card_ops, ptr %ops, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %12 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i137 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call5, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.of_parse_phandle.exit_crit_edge

if.then7.of_parse_phandle.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then7.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ null, %if.then7.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %15 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpus, align 4
  %of_node10 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i, ptr %of_node10, align 4
  call void @of_node_put(ptr noundef nonnull %call5) #6
  %18 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpus, align 4
  %of_node12 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %of_node12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node12, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %do.end, label %if.end15

do.end:                                           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end15:                                         ; preds = %of_parse_phandle.exit
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call17 = call ptr @of_get_child_by_name(ptr noundef %23, ptr noundef nonnull @.str.9) #6
  %call18 = call i32 @snd_soc_of_get_dai_link_codecs(ptr noundef %dev1, ptr noundef %call17, ptr noundef nonnull %call.i) #6
  call void @of_node_put(ptr noundef %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  %24 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpus, align 4
  %of_node21 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node21, align 4
  br i1 %cmp, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef %27) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call28 = call ptr @of_clk_get_by_name(ptr noundef %27, ptr noundef nonnull @.str.13) #6
  %clk_i2s_bus = getelementptr inbounds %struct.snow_priv, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %clk_i2s_bus to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call28, ptr %clk_i2s_bus, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end25.if.end64_crit_edge

if.end25.if.end64_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_soc_of_put_dai_link_codecs(ptr noundef nonnull %call.i) #6
  %29 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpus, align 4
  %of_node33 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %of_node33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node33, align 4
  call void @of_node_put(ptr noundef %32) #6
  %33 = ptrtoint ptr %clk_i2s_bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_i2s_bus, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %36 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %codecs, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.14, ptr %dai_name, align 4
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i138) #6
  %41 = call ptr @memset(ptr %args.i138, i32 255, i32 72)
  %call.i139 = call i32 @__of_parse_phandle_with_args(ptr noundef %40, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i138) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %if.end.i141, label %if.else.of_parse_phandle.exit143_crit_edge

if.else.of_parse_phandle.exit143_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit143

if.end.i141:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %args.i138 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %args.i138, align 4
  br label %of_parse_phandle.exit143

of_parse_phandle.exit143:                         ; preds = %if.end.i141, %if.else.of_parse_phandle.exit143_crit_edge
  %retval.0.i142 = phi ptr [ %43, %if.end.i141 ], [ null, %if.else.of_parse_phandle.exit143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i138) #6
  %44 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cpus, align 4
  %of_node41 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %of_node41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %retval.0.i142, ptr %of_node41, align 4
  %47 = load ptr, ptr %cpus, align 4
  %of_node43 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %of_node43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node43, align 4
  %tobool44.not = icmp eq ptr %49, null
  br i1 %tobool44.not, label %do.end48, label %if.end49

do.end48:                                         ; preds = %of_parse_phandle.exit143
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end49:                                         ; preds = %of_parse_phandle.exit143
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i144) #6
  %52 = call ptr @memset(ptr %args.i144, i32 255, i32 72)
  %call.i145 = call i32 @__of_parse_phandle_with_args(ptr noundef %51, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %if.end.i147, label %if.end49.of_parse_phandle.exit149_crit_edge

if.end49.of_parse_phandle.exit149_crit_edge:      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit149

if.end.i147:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %args.i144 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %args.i144, align 4
  br label %of_parse_phandle.exit149

of_parse_phandle.exit149:                         ; preds = %if.end.i147, %if.end49.of_parse_phandle.exit149_crit_edge
  %retval.0.i148 = phi ptr [ %54, %if.end.i147 ], [ null, %if.end49.of_parse_phandle.exit149_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i144) #6
  %55 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %codecs, align 4
  %of_node53 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %of_node53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i148, ptr %of_node53, align 4
  %58 = load ptr, ptr %codecs, align 4
  %of_node55 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %of_node55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node55, align 4
  %tobool56.not = icmp eq ptr %60, null
  br i1 %tobool56.not, label %if.then57, label %of_parse_phandle.exit149.if.end64_crit_edge

of_parse_phandle.exit149.if.end64_crit_edge:      ; preds = %of_parse_phandle.exit149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57:                                        ; preds = %of_parse_phandle.exit149
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cpus, align 4
  %of_node59 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %of_node59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node59, align 4
  call void @of_node_put(ptr noundef %64) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end64:                                         ; preds = %of_parse_phandle.exit149.if.end64_crit_edge, %if.end25.if.end64_crit_edge
  %65 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cpus, align 4
  %of_node66 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %of_node66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node66, align 4
  %69 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %platforms, align 4
  %of_node68 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %of_node68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %of_node68, align 4
  %call69 = call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @snow_snd, ptr noundef nonnull @.str.23) #6
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 57), align 4
  %call70 = call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull @snow_snd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end64.cleanup_crit_edge, label %if.then72

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call70, ptr noundef nonnull @.str.24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end64.cleanup_crit_edge, %if.then57, %do.end48, %if.then31, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then19 ], [ %35, %if.then31 ], [ %call74, %if.then72 ], [ -22, %do.end ], [ -22, %if.then57 ], [ -22, %do.end48 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snow_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpus, align 4
  %of_node = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 4
  tail call void @of_node_put(ptr noundef %5) #6
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codecs, align 4
  %of_node1 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node1, align 4
  tail call void @of_node_put(ptr noundef %9) #6
  tail call void @snd_soc_of_put_dai_link_codecs(ptr noundef %1) #6
  %clk_i2s_bus = getelementptr inbounds %struct.snow_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %clk_i2s_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_i2s_bus, align 4
  tail call void @clk_put(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_link_codecs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_put_dai_link_codecs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snow_late_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %1) #6
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
  %call2 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef 24000000, i32 noundef 0) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snow_card_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !92
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
  %call2 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %15 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.end9 [
    i32 16, label %if.end.if.end12_crit_edge
    i32 24, label %if.end.if.end12_crit_edge101
  ]

if.end.if.end12_crit_edge101:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %dev11 = getelementptr inbounds %struct.snd_soc_card, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29, i32 noundef %call2) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge101
  %arrayidx.i.i78 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i78, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %21, label %if.end12.cleanup_crit_edge [
    i32 16000, label %if.end12.sw.bb_crit_edge
    i32 22050, label %if.end12.sw.bb_crit_edge102
    i32 24000, label %if.end12.sw.bb_crit_edge103
    i32 32000, label %if.end12.sw.bb_crit_edge104
    i32 44100, label %if.end12.sw.bb_crit_edge105
    i32 48000, label %if.end12.sw.bb_crit_edge106
    i32 88200, label %if.end12.sw.bb_crit_edge107
    i32 96000, label %if.end12.sw.bb_crit_edge108
    i32 64000, label %if.end12.sw.epilog_crit_edge
    i32 8000, label %if.end12.sw.bb16_crit_edge
    i32 11025, label %if.end12.sw.bb16_crit_edge109
    i32 12000, label %if.end12.sw.bb16_crit_edge110
  ]

if.end12.sw.bb16_crit_edge110:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end12.sw.bb16_crit_edge109:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end12.sw.bb16_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end12.sw.bb_crit_edge108:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge107:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge106:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge105:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge104:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge103:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge102:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge102, %if.end12.sw.bb_crit_edge103, %if.end12.sw.bb_crit_edge104, %if.end12.sw.bb_crit_edge105, %if.end12.sw.bb_crit_edge106, %if.end12.sw.bb_crit_edge107, %if.end12.sw.bb_crit_edge108
  %mul14 = shl nuw nsw i32 %call2, 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12.sw.bb16_crit_edge, %if.end12.sw.bb16_crit_edge109, %if.end12.sw.bb16_crit_edge110
  %mul17 = shl nuw nsw i32 %call2, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb, %if.end12.sw.epilog_crit_edge
  %rfs.0 = phi i32 [ %mul17, %sw.bb16 ], [ %mul14, %sw.bb ], [ 384, %if.end12.sw.epilog_crit_edge ]
  %mul19 = mul nuw nsw i32 %rfs.0, %21
  %mul24 = shl nuw nsw i32 %mul19, 3
  %23 = zext i32 %mul24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mul24, label %for.cond21.2 [
    i32 73728000, label %sw.epilog.for.inc29_crit_edge
    i32 67737600, label %for.inc29.fold.split
    i32 49152000, label %for.inc29.fold.split95
  ]

sw.epilog.for.inc29_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29

for.cond21.2:                                     ; preds = %sw.epilog
  %24 = add nsw i32 %mul24, -45158399
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp25.3 = icmp ult i32 %24, 3
  br i1 %cmp25.3, label %for.cond21.2.for.inc29_crit_edge, label %for.cond21.3

for.cond21.2.for.inc29_crit_edge:                 ; preds = %for.cond21.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29

for.cond21.3:                                     ; preds = %for.cond21.2
  call void @__sanitizer_cov_trace_pc() #8
  %25 = add nsw i32 %mul24, -32767999
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp25.4 = icmp ult i32 %25, 3
  %spec.select = select i1 %cmp25.4, i32 32768001, i32 -22
  br label %for.inc29

for.inc29.fold.split:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29

for.inc29.fold.split95:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29

for.inc29:                                        ; preds = %for.inc29.fold.split95, %for.inc29.fold.split, %for.cond21.3, %for.cond21.2.for.inc29_crit_edge, %sw.epilog.for.inc29_crit_edge
  %freq.1 = phi i32 [ %mul24, %sw.epilog.for.inc29_crit_edge ], [ 45158401, %for.cond21.2.for.inc29_crit_edge ], [ 67737602, %for.inc29.fold.split ], [ 49152000, %for.inc29.fold.split95 ], [ %spec.select, %for.cond21.3 ]
  %mul24.1 = shl nuw nsw i32 %mul19, 2
  %26 = zext i32 %mul24.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %mul24.1, label %for.cond21.2.1 [
    i32 73728000, label %for.inc29.for.inc29.1_crit_edge
    i32 67737600, label %for.inc29.1.fold.split
    i32 49152000, label %for.inc29.1.fold.split96
  ]

for.inc29.for.inc29.1_crit_edge:                  ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.1

for.cond21.2.1:                                   ; preds = %for.inc29
  %27 = add nsw i32 %mul24.1, -45158399
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp25.3.1 = icmp ult i32 %27, 3
  br i1 %cmp25.3.1, label %for.cond21.2.1.for.inc29.1_crit_edge, label %for.cond21.3.1

for.cond21.2.1.for.inc29.1_crit_edge:             ; preds = %for.cond21.2.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.1

for.cond21.3.1:                                   ; preds = %for.cond21.2.1
  call void @__sanitizer_cov_trace_pc() #8
  %28 = add nsw i32 %mul24.1, -32767999
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp25.4.1 = icmp ult i32 %28, 3
  %spec.select97 = select i1 %cmp25.4.1, i32 32768001, i32 %freq.1
  br label %for.inc29.1

for.inc29.1.fold.split:                           ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.1

for.inc29.1.fold.split96:                         ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.1

for.inc29.1:                                      ; preds = %for.inc29.1.fold.split96, %for.inc29.1.fold.split, %for.cond21.3.1, %for.cond21.2.1.for.inc29.1_crit_edge, %for.inc29.for.inc29.1_crit_edge
  %freq.1.1 = phi i32 [ %mul24.1, %for.inc29.for.inc29.1_crit_edge ], [ 45158401, %for.cond21.2.1.for.inc29.1_crit_edge ], [ 67737602, %for.inc29.1.fold.split ], [ 49152000, %for.inc29.1.fold.split96 ], [ %spec.select97, %for.cond21.3.1 ]
  %mul24.2 = shl nuw nsw i32 %mul19, 1
  %29 = zext i32 %mul24.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %mul24.2, label %for.cond21.2.2 [
    i32 73728000, label %for.inc29.1.for.inc29.2_crit_edge
    i32 67737600, label %for.inc29.2.fold.split
    i32 49152000, label %for.inc29.2.fold.split98
  ]

for.inc29.1.for.inc29.2_crit_edge:                ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.2

for.cond21.2.2:                                   ; preds = %for.inc29.1
  %30 = add nsw i32 %mul24.2, -45158399
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp25.3.2 = icmp ult i32 %30, 3
  br i1 %cmp25.3.2, label %for.cond21.2.2.for.inc29.2_crit_edge, label %for.cond21.3.2

for.cond21.2.2.for.inc29.2_crit_edge:             ; preds = %for.cond21.2.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.2

for.cond21.3.2:                                   ; preds = %for.cond21.2.2
  call void @__sanitizer_cov_trace_pc() #8
  %31 = add nsw i32 %mul24.2, -32767999
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp25.4.2 = icmp ult i32 %31, 3
  %spec.select99 = select i1 %cmp25.4.2, i32 32768001, i32 %freq.1.1
  br label %for.inc29.2

for.inc29.2.fold.split:                           ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.2

for.inc29.2.fold.split98:                         ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.2

for.inc29.2:                                      ; preds = %for.inc29.2.fold.split98, %for.inc29.2.fold.split, %for.cond21.3.2, %for.cond21.2.2.for.inc29.2_crit_edge, %for.inc29.1.for.inc29.2_crit_edge
  %freq.1.2 = phi i32 [ %mul24.2, %for.inc29.1.for.inc29.2_crit_edge ], [ 45158401, %for.cond21.2.2.for.inc29.2_crit_edge ], [ 67737602, %for.inc29.2.fold.split ], [ 49152000, %for.inc29.2.fold.split98 ], [ %spec.select99, %for.cond21.3.2 ]
  %32 = zext i32 %mul19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %mul19, label %for.cond21.2.3 [
    i32 73728000, label %for.inc29.2.if.end38_crit_edge
    i32 67737600, label %if.end38.fold.split
    i32 49152000, label %if.end38.fold.split100
  ]

for.inc29.2.if.end38_crit_edge:                   ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.cond21.2.3:                                   ; preds = %for.inc29.2
  %33 = add nsw i32 %mul19, -45158399
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp25.3.3 = icmp ult i32 %33, 3
  br i1 %cmp25.3.3, label %for.cond21.2.3.if.end38_crit_edge, label %for.cond21.3.3

for.cond21.2.3.if.end38_crit_edge:                ; preds = %for.cond21.2.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.cond21.3.3:                                   ; preds = %for.cond21.2.3
  %34 = add nsw i32 %mul19, -32767999
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp25.4.3 = icmp ult i32 %34, 3
  br i1 %cmp25.4.3, label %for.cond21.3.3.if.end38_crit_edge, label %for.inc29.3

for.cond21.3.3.if.end38_crit_edge:                ; preds = %for.cond21.3.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.inc29.3:                                      ; preds = %for.cond21.3.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.1.2)
  %cmp31 = icmp slt i32 %freq.1.2, 0
  br i1 %cmp31, label %do.end35, label %for.inc29.3.if.end38_crit_edge

for.inc29.3.if.end38_crit_edge:                   ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end35:                                         ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %dev37 = getelementptr inbounds %struct.snd_soc_card, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.32, i32 noundef %mul19) #9
  br label %cleanup

if.end38.fold.split:                              ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38.fold.split100:                           ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.fold.split100, %if.end38.fold.split, %for.inc29.3.if.end38_crit_edge, %for.cond21.3.3.if.end38_crit_edge, %for.cond21.2.3.if.end38_crit_edge, %for.inc29.2.if.end38_crit_edge
  %freq.1.394 = phi i32 [ %freq.1.2, %for.inc29.3.if.end38_crit_edge ], [ 32768001, %for.cond21.3.3.if.end38_crit_edge ], [ 45158401, %for.cond21.2.3.if.end38_crit_edge ], [ %mul19, %for.inc29.2.if.end38_crit_edge ], [ 67737602, %if.end38.fold.split ], [ 49152000, %if.end38.fold.split100 ]
  %clk_i2s_bus = getelementptr inbounds %struct.snow_priv, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %clk_i2s_bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_i2s_bus, align 4
  %call39 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %freq.1.394) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %dev46 = getelementptr inbounds %struct.snd_soc_card, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.35) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end38.cleanup_crit_edge, %do.end35, %if.end12.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %do.end9 ], [ -22, %do.end35 ], [ %call39, %do.end44 ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_snd_soc_snow__238_254_snow_driver_init6, !1, !"__initcall__kmod_snd_soc_snow__238_254_snow_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/snow.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_snow_driver_exit, !1, !"__exitcall_snow_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/snow.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/snow.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/samsung/snow.c", i32 246, i32 11}
!10 = !{ptr @snow_driver, !11, !"snow_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/snow.c", i32 244, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/snow.c", i32 143, i32 15}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/snow.c", i32 158, i32 43}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/snow.c", i32 163, i32 47}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/samsung/snow.c", i32 167, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snow_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @snow_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/samsung/snow.c", i32 171, i32 46}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/samsung/snow.c", i32 177, i32 4}
!30 = !{ptr @snow_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @snow_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/snow.c", i32 182, i32 14}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/samsung/snow.c", i32 189, i32 28}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/samsung/snow.c", i32 192, i32 7}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/samsung/snow.c", i32 194, i32 4}
!40 = !{ptr @snow_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @snow_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/samsung/snow.c", i32 199, i32 7}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/samsung/snow.c", i32 202, i32 4}
!46 = !{ptr @snow_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @snow_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/samsung/snow.c", i32 210, i32 35}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/samsung/snow.c", i32 217, i32 10}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/samsung/snow.c", i32 120, i32 10}
!54 = !{ptr @snow_snd, !55, !"snow_snd", i1 false, i1 false}
!55 = !{!"../sound/soc/samsung/snow.c", i32 119, i32 28}
!56 = !{ptr @links_cpus, !57, !"links_cpus", i1 false, i1 false}
!57 = !{!"../sound/soc/samsung/snow.c", i32 17, i32 1}
!58 = !{ptr @links_codecs, !57, !"links_codecs", i1 false, i1 false}
!59 = !{ptr @links_platforms, !57, !"links_platforms", i1 false, i1 false}
!60 = !{ptr @snow_card_ops, !61, !"snow_card_ops", i1 false, i1 false}
!61 = !{!"../sound/soc/samsung/snow.c", i32 100, i32 33}
!62 = distinct !{null, !63, !"pll_rate", i1 false, i1 false}
!63 = !{!"../sound/soc/samsung/snow.c", i32 30, i32 28}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/samsung/snow.c", i32 42, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @snow_card_hw_params._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @snow_card_hw_params._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/snow.c", i32 47, i32 3}
!71 = !{ptr @snow_card_hw_params._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @snow_card_hw_params._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/samsung/snow.c", i32 87, i32 3}
!75 = !{ptr @snow_card_hw_params._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @snow_card_hw_params._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/samsung/snow.c", i32 93, i32 3}
!79 = !{ptr @snow_card_hw_params._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @snow_card_hw_params._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @snow_of_match, !82, !"snow_of_match", i1 false, i1 false}
!82 = !{!"../sound/soc/samsung/snow.c", i32 236, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i32 0, i32 33}
