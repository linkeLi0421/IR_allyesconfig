; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/bells.c_pt.bc'
source_filename = "../sound/soc/samsung/bells.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.bells_drvdata = type { i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_snd_soc_bells__294_488_bells_driver_init6 = internal global ptr @bells_driver_init, section ".initcall6.init", align 4
@bells_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bells_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bells_driver_exit = internal global ptr @bells_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [46 x i8] c"snd_soc_bells.description=Bells audio support\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [70 x i8] c"snd_soc_bells.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [51 x i8] c"snd_soc_bells.file=sound/soc/samsung/snd-soc-bells\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [26 x i8] c"snd_soc_bells.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [35 x i8] c"snd_soc_bells.alias=platform:bells\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bells\00", [26 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@bells_cards = internal global { [3 x %struct.snd_soc_card], [488 x i8] } { [3 x %struct.snd_soc_card] [%struct.snd_soc_card { ptr @.str.6, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @bells_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bells_set_bias_level, ptr @bells_set_bias_level_post, ptr null, ptr null, i32 0, ptr @bells_dai_wm2200, i32 2, %struct.list_head zeroinitializer, i32 0, ptr @bells_codec_conf, i32 1, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @bells_widgets, i32 1, ptr @bells_routes, i32 5, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr @wm2200_drvdata }, %struct.snd_soc_card { ptr @.str.7, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @bells_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bells_set_bias_level, ptr @bells_set_bias_level_post, ptr null, ptr null, i32 0, ptr @bells_dai_wm5102, i32 4, %struct.list_head zeroinitializer, i32 0, ptr @bells_codec_conf, i32 1, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @bells_widgets, i32 1, ptr @bells_routes, i32 5, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr @wm5102_drvdata }, %struct.snd_soc_card { ptr @.str.8, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @bells_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bells_set_bias_level, ptr @bells_set_bias_level_post, ptr null, ptr null, i32 0, ptr @bells_dai_wm5110, i32 4, %struct.list_head zeroinitializer, i32 0, ptr @bells_codec_conf, i32 1, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @bells_widgets, i32 1, ptr @bells_routes, i32 5, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr @wm5110_drvdata }], [488 x i8] zeroinitializer }, align 32
@bells_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"snd_soc_register_card(%s) failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bells_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/samsung/bells.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bells_probe._entry_ptr = internal global ptr @bells_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bells WM2200\00", [19 x i8] zeroinitializer }, align 32
@bells_codec_conf = internal global { [1 x %struct.snd_soc_codec_conf], [16 x i8] } { [1 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.48, ptr null, ptr null }, ptr @.str.49 }], [16 x i8] zeroinitializer }, align 32
@bells_routes = internal global { [5 x %struct.snd_soc_dapm_route], [92 x i8] } { [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@wm2200_drvdata = internal global { %struct.bells_drvdata, [24 x i8] } { %struct.bells_drvdata { i32 22579200, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bells WM5102\00", [19 x i8] zeroinitializer }, align 32
@wm5102_drvdata = internal global { %struct.bells_drvdata, [24 x i8] } { %struct.bells_drvdata { i32 45158400, i32 49152000 }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bells WM5110\00", [19 x i8] zeroinitializer }, align 32
@wm5110_drvdata = internal global { %struct.bells_drvdata, [24 x i8] } { %struct.bells_drvdata { i32 135475200, i32 147456000 }, [24 x i8] zeroinitializer }, align 32
@bells_late_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set SYSCLK: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bells_late_probe\00", [47 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr = internal global ptr @bells_late_probe._entry, section ".printk_index", align 4
@bells_late_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set WM0010 clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.13 = internal global ptr @bells_late_probe._entry.11, section ".printk_index", align 4
@bells_late_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set AIF1 clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.16 = internal global ptr @bells_late_probe._entry.14, section ".printk_index", align 4
@bells_late_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set OPCLK: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.19 = internal global ptr @bells_late_probe._entry.17, section ".printk_index", align 4
@bells_late_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set ASYNCCLK: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.22 = internal global ptr @bells_late_probe._entry.20, section ".printk_index", align 4
@bells_late_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set AIF2 clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.25 = internal global ptr @bells_late_probe._entry.23, section ".printk_index", align 4
@bells_late_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.27 = internal global ptr @bells_late_probe._entry.26, section ".printk_index", align 4
@bells_late_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set MCLK: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bells_late_probe._entry_ptr.30 = internal global ptr @bells_late_probe._entry.28, section ".printk_index", align 4
@bells_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to start FLL: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bells_set_bias_level\00", [43 x i8] zeroinitializer }, align 32
@bells_set_bias_level._entry_ptr = internal global ptr @bells_set_bias_level._entry, section ".printk_index", align 4
@bells_set_bias_level._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bells_set_bias_level._entry_ptr.34 = internal global ptr @bells_set_bias_level._entry.33, section ".printk_index", align 4
@bells_set_bias_level_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to stop FLL: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bells_set_bias_level_post\00", [38 x i8] zeroinitializer }, align 32
@bells_set_bias_level_post._entry_ptr = internal global ptr @bells_set_bias_level_post._entry, section ".printk_index", align 4
@bells_set_bias_level_post._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bells_set_bias_level_post._entry_ptr.38 = internal global ptr @bells_set_bias_level_post._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CPU-DSP\00", [24 x i8] zeroinitializer }, align 32
@wm2200_cpu_dsp_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.42 }], [20 x i8] zeroinitializer }, align 32
@wm2200_cpu_dsp_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@wm2200_cpu_dsp_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.42, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSP-CODEC\00", [22 x i8] zeroinitializer }, align 32
@wm2200_dsp_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.45 }], [20 x i8] zeroinitializer }, align 32
@wm2200_dsp_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.46, ptr null, ptr @.str.47 }], [20 x i8] zeroinitializer }, align 32
@wm2200_dsp_codec_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@sub_params = internal constant { %struct.snd_soc_pcm_stream, [56 x i8] } { %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 0, i32 44100, i32 44100, i32 2, i32 2, i32 0 }, [56 x i8] zeroinitializer }, align 32
@bells_dai_wm2200 = internal global { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [56 x i8] } { [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.39, ptr @.str.39, ptr @wm2200_cpu_dsp_cpus, i32 1, ptr @wm2200_cpu_dsp_codecs, i32 1, ptr @wm2200_cpu_dsp_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.40, ptr @.str.40, ptr @wm2200_dsp_codec_cpus, i32 1, ptr @wm2200_dsp_codec_codecs, i32 1, ptr @wm2200_dsp_codec_platforms, i32 0, i32 0, ptr @sub_params, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-i2s.0\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi0.0\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010-sdi1\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010-sdi2\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm2200.1-003a\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm2200\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm9081.1-006c\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Sub\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@bells_widgets = internal global { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sub CLK_SYS\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OPCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLKIN\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2L\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2R\00", [27 x i8] zeroinitializer }, align 32
@wm5102_cpu_dsp_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.42 }], [20 x i8] zeroinitializer }, align 32
@wm5102_cpu_dsp_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@wm5102_cpu_dsp_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.42, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@wm5102_dsp_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.45 }], [20 x i8] zeroinitializer }, align 32
@wm5102_dsp_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.60, ptr null, ptr @.str.61 }], [20 x i8] zeroinitializer }, align 32
@wm5102_dsp_codec_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Baseband\00", [23 x i8] zeroinitializer }, align 32
@wm5102_baseband_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.62 }], [20 x i8] zeroinitializer }, align 32
@wm5102_baseband_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.63, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@wm5102_baseband_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@baseband_params = internal constant { %struct.snd_soc_pcm_stream, [56 x i8] } { %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 0, i32 8000, i32 8000, i32 2, i32 2, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm5102_sub_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.65 }], [20 x i8] zeroinitializer }, align 32
@wm5102_sub_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.48, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@wm5102_sub_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@bells_dai_wm5102 = internal global { [4 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [112 x i8] } { [4 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.39, ptr @.str.39, ptr @wm5102_cpu_dsp_cpus, i32 1, ptr @wm5102_cpu_dsp_codecs, i32 1, ptr @wm5102_cpu_dsp_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.40, ptr @.str.40, ptr @wm5102_dsp_codec_cpus, i32 1, ptr @wm5102_dsp_codec_codecs, i32 1, ptr @wm5102_dsp_codec_platforms, i32 0, i32 0, ptr @sub_params, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.58, ptr @.str.58, ptr @wm5102_baseband_cpus, i32 1, ptr @wm5102_baseband_codecs, i32 1, ptr @wm5102_baseband_platforms, i32 0, i32 0, ptr @baseband_params, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.49, ptr @.str.49, ptr @wm5102_sub_cpus, i32 1, ptr @wm5102_sub_codecs, i32 1, ptr @wm5102_sub_platforms, i32 0, i32 0, ptr @sub_params, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [112 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm5102-codec\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5102-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5102-aif2\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm1250-ev1.1-0027\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm1250-ev1\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5102-aif3\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm9081-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm5110_cpu_dsp_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.42 }], [20 x i8] zeroinitializer }, align 32
@wm5110_cpu_dsp_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@wm5110_cpu_dsp_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.42, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@wm5110_dsp_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.45 }], [20 x i8] zeroinitializer }, align 32
@wm5110_dsp_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@wm5110_dsp_codec_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@wm5110_baseband_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.70 }], [20 x i8] zeroinitializer }, align 32
@wm5110_baseband_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.63, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@wm5110_baseband_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@wm5110_sub_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.71 }], [20 x i8] zeroinitializer }, align 32
@wm5110_sub_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.48, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@wm5110_sub_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@bells_dai_wm5110 = internal global { [4 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [112 x i8] } { [4 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.39, ptr @.str.39, ptr @wm5110_cpu_dsp_cpus, i32 1, ptr @wm5110_cpu_dsp_codecs, i32 1, ptr @wm5110_cpu_dsp_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.40, ptr @.str.40, ptr @wm5110_dsp_codec_cpus, i32 1, ptr @wm5110_dsp_codec_codecs, i32 1, ptr @wm5110_dsp_codec_platforms, i32 0, i32 0, ptr @sub_params, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.58, ptr @.str.58, ptr @wm5110_baseband_cpus, i32 1, ptr @wm5110_baseband_codecs, i32 1, ptr @wm5110_baseband_platforms, i32 0, i32 0, ptr @baseband_params, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.49, ptr @.str.49, ptr @wm5110_sub_cpus, i32 1, ptr @wm5110_sub_codecs, i32 1, ptr @wm5110_sub_platforms, i32 0, i32 0, ptr @sub_params, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [112 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm5110-codec\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5110-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5110-aif2\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm5110-aif3\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"bells_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 480, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 482, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"bells_cards\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 402, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 473, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 404, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"bells_codec_conf\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 382, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"bells_routes\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 393, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"wm2200_drvdata\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 38, i32 29 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 424, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"wm5102_drvdata\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 42, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 444, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"wm5110_drvdata\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 47, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 166, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 172, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 178, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 183, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 193, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 202, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 215, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 222, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 79, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 87, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 119, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 127, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 256, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"wm2200_cpu_dsp_cpus\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [22 x i8] c"wm2200_cpu_dsp_codecs\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [25 x i8] c"wm2200_cpu_dsp_platforms\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 263, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"wm2200_dsp_codec_cpus\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [24 x i8] c"wm2200_dsp_codec_codecs\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [27 x i8] c"wm2200_dsp_codec_platforms\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [11 x i8] c"sub_params\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 237, i32 40 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"bells_dai_wm2200\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 254, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 245, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 250, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 384, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 385, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 390, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"bells_widgets\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 389, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 394, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 394, i32 25 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 395, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 397, i32 18 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 398, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 399, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c"wm5102_cpu_dsp_cpus\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"wm5102_cpu_dsp_codecs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [25 x i8] c"wm5102_cpu_dsp_platforms\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 273, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [22 x i8] c"wm5102_dsp_codec_cpus\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [24 x i8] c"wm5102_dsp_codec_codecs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"wm5102_dsp_codec_platforms\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 308, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant [21 x i8] c"wm5102_baseband_cpus\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [23 x i8] c"wm5102_baseband_codecs\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"wm5102_baseband_platforms\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"baseband_params\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 229, i32 40 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"wm5102_sub_cpus\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [18 x i8] c"wm5102_sub_codecs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [21 x i8] c"wm5102_sub_platforms\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"bells_dai_wm5102\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 290, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 278, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 282, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 286, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"wm5110_cpu_dsp_cpus\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [22 x i8] c"wm5110_cpu_dsp_codecs\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [25 x i8] c"wm5110_cpu_dsp_platforms\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 327, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant [22 x i8] c"wm5110_dsp_codec_cpus\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [24 x i8] c"wm5110_dsp_codec_codecs\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [27 x i8] c"wm5110_dsp_codec_platforms\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [21 x i8] c"wm5110_baseband_cpus\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [23 x i8] c"wm5110_baseband_codecs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"wm5110_baseband_platforms\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [16 x i8] c"wm5110_sub_cpus\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [18 x i8] c"wm5110_sub_codecs\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [21 x i8] c"wm5110_sub_platforms\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"bells_dai_wm5110\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 345, i32 32 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 332, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 336, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [29 x i8] c"../sound/soc/samsung/bells.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 341, i32 1 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_bells_driver_exit, ptr @__initcall__kmod_snd_soc_bells__294_488_bells_driver_init6, ptr @bells_driver_exit, ptr @bells_late_probe._entry, ptr @bells_late_probe._entry.11, ptr @bells_late_probe._entry.14, ptr @bells_late_probe._entry.17, ptr @bells_late_probe._entry.20, ptr @bells_late_probe._entry.23, ptr @bells_late_probe._entry.26, ptr @bells_late_probe._entry.28, ptr @bells_late_probe._entry_ptr, ptr @bells_late_probe._entry_ptr.13, ptr @bells_late_probe._entry_ptr.16, ptr @bells_late_probe._entry_ptr.19, ptr @bells_late_probe._entry_ptr.22, ptr @bells_late_probe._entry_ptr.25, ptr @bells_late_probe._entry_ptr.27, ptr @bells_late_probe._entry_ptr.30, ptr @bells_probe._entry, ptr @bells_probe._entry_ptr, ptr @bells_set_bias_level._entry, ptr @bells_set_bias_level._entry.33, ptr @bells_set_bias_level._entry_ptr, ptr @bells_set_bias_level._entry_ptr.34, ptr @bells_set_bias_level_post._entry, ptr @bells_set_bias_level_post._entry.37, ptr @bells_set_bias_level_post._entry_ptr, ptr @bells_set_bias_level_post._entry_ptr.38, ptr @bells_driver, ptr @.str, ptr @bells_cards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bells_codec_conf, ptr @bells_routes, ptr @wm2200_drvdata, ptr @.str.7, ptr @wm5102_drvdata, ptr @.str.8, ptr @wm5110_drvdata, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @wm2200_cpu_dsp_cpus, ptr @wm2200_cpu_dsp_codecs, ptr @wm2200_cpu_dsp_platforms, ptr @.str.40, ptr @wm2200_dsp_codec_cpus, ptr @wm2200_dsp_codec_codecs, ptr @wm2200_dsp_codec_platforms, ptr @sub_params, ptr @bells_dai_wm2200, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @bells_widgets, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @wm5102_cpu_dsp_cpus, ptr @wm5102_cpu_dsp_codecs, ptr @wm5102_cpu_dsp_platforms, ptr @wm5102_dsp_codec_cpus, ptr @wm5102_dsp_codec_codecs, ptr @wm5102_dsp_codec_platforms, ptr @.str.58, ptr @wm5102_baseband_cpus, ptr @wm5102_baseband_codecs, ptr @wm5102_baseband_platforms, ptr @baseband_params, ptr @wm5102_sub_cpus, ptr @wm5102_sub_codecs, ptr @wm5102_sub_platforms, ptr @bells_dai_wm5102, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @wm5110_cpu_dsp_cpus, ptr @wm5110_cpu_dsp_codecs, ptr @wm5110_cpu_dsp_platforms, ptr @wm5110_dsp_codec_cpus, ptr @wm5110_dsp_codec_codecs, ptr @wm5110_dsp_codec_platforms, ptr @wm5110_baseband_cpus, ptr @wm5110_baseband_codecs, ptr @wm5110_baseband_platforms, ptr @wm5110_sub_cpus, ptr @wm5110_sub_codecs, ptr @wm5110_sub_platforms, ptr @bells_dai_wm5110, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_cards to i32), i32 1944, i32 2432, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_codec_conf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_routes to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_late_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_set_bias_level._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_set_bias_level_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_set_bias_level_post._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_cpu_dsp_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_cpu_dsp_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_cpu_dsp_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_dsp_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_dsp_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_dsp_codec_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sub_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_dai_wm2200 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_cpu_dsp_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_cpu_dsp_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_cpu_dsp_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_dsp_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_dsp_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_dsp_codec_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_baseband_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_baseband_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_baseband_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_sub_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_sub_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_sub_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_dai_wm5102 to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_cpu_dsp_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_cpu_dsp_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_cpu_dsp_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_dsp_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_dsp_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_dsp_codec_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_baseband_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_baseband_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_baseband_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_sub_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_sub_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_sub_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_dai_wm5110 to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bells_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bells_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bells_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @bells_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bells_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %dev1 = getelementptr [3 x %struct.snd_soc_card], ptr @bells_cards, i32 0, i32 %1, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1, align 4
  %3 = load i32, ptr %id, align 4
  %arrayidx4 = getelementptr [3 x %struct.snd_soc_card], ptr @bells_cards, i32 0, i32 %3
  %call = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %arrayidx4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx7 = getelementptr [3 x %struct.snd_soc_card], ptr @bells_cards, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bells_late_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %3) #4
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
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component2, align 4
  %12 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dai_link, align 4
  %arrayidx4 = getelementptr %struct.snd_soc_dai_link, ptr %13, i32 1
  %call5 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx4) #4
  %dais6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call5, i32 0, i32 9
  %14 = ptrtoint ptr %dais6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dais6, align 4
  %num_cpus7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call5, i32 0, i32 11
  %16 = ptrtoint ptr %num_cpus7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cpus7, align 4
  %arrayidx9 = getelementptr ptr, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9, align 4
  %component10 = getelementptr inbounds %struct.snd_soc_dai, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %component10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component10, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %call15 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %21, i32 noundef 1, i32 noundef 4, i32 noundef %23, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.9, i32 noundef %call15) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call16 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 22579200, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.snd_soc_component, ptr %11, i32 0, i32 3
  %26 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, i32 noundef %call16) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %call24 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %19, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end23.if.end31_crit_edge, label %do.end29

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %dev30 = getelementptr inbounds %struct.snd_soc_dai, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15, i32 noundef %call24) #7
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end23.if.end31_crit_edge
  %call32 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %21, i32 noundef 3, i32 noundef 0, i32 noundef 22579200, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end31.if.end39_crit_edge, label %do.end37

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %dev38 = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.18, i32 noundef %call32) #7
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end31.if.end39_crit_edge
  %num_rtd = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 27
  %32 = ptrtoint ptr %num_rtd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rtd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp40 = icmp eq i32 %33, 2
  br i1 %cmp40, label %if.end39.cleanup_crit_edge, label %if.end42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  %asyncclk_rate = getelementptr inbounds %struct.bells_drvdata, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %asyncclk_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asyncclk_rate, align 4
  %call43 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %21, i32 noundef 2, i32 noundef 5, i32 noundef %35, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %dev49 = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %36 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.21, i32 noundef %call43) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %38 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dai_link, align 4
  %arrayidx52 = getelementptr %struct.snd_soc_dai_link, ptr %39, i32 2
  %call53 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx52) #4
  %dais54 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call53, i32 0, i32 9
  %40 = ptrtoint ptr %dais54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dais54, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call56 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %43, i32 noundef 2, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %dev62 = getelementptr inbounds %struct.snd_soc_dai, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24, i32 noundef %call56) #7
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  %46 = ptrtoint ptr %num_rtd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_rtd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp65 = icmp eq i32 %47, 3
  br i1 %cmp65, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %48 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dai_link, align 4
  %arrayidx69 = getelementptr %struct.snd_soc_dai_link, ptr %49, i32 3
  %call70 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx69) #4
  %dais71 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call70, i32 0, i32 9
  %50 = ptrtoint ptr %dais71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dais71, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %num_cpus74 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call70, i32 0, i32 11
  %54 = ptrtoint ptr %num_cpus74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_cpus74, align 4
  %arrayidx76 = getelementptr ptr, ptr %51, i32 %55
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx76, align 4
  %call77 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %53, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 0
  br i1 %cmp78.not, label %if.end84, label %do.end82

do.end82:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %dev83 = getelementptr inbounds %struct.snd_soc_dai, ptr %19, i32 0, i32 2
  %58 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15, i32 noundef %call77) #7
  br label %cleanup

if.end84:                                         ; preds = %if.end67
  %component85 = getelementptr inbounds %struct.snd_soc_dai, ptr %57, i32 0, i32 12
  %60 = ptrtoint ptr %component85 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %component85, align 4
  %call86 = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %61, i32 noundef 1, i32 noundef 0, i32 noundef 22579200, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %if.end84.cleanup_crit_edge, label %do.end91

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %dev92 = getelementptr inbounds %struct.snd_soc_dai, ptr %57, i32 0, i32 2
  %62 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev92, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.29, i32 noundef %call86) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end84.cleanup_crit_edge, %do.end82, %if.end63.cleanup_crit_edge, %do.end61, %do.end48, %if.end39.cleanup_crit_edge, %do.end21, %do.end
  %retval.0 = phi i32 [ %call15, %do.end ], [ %call16, %do.end21 ], [ %call43, %do.end48 ], [ %call56, %do.end61 ], [ %call77, %do.end82 ], [ %call86, %do.end91 ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bells_set_bias_level(ptr noundef %card, ptr nocapture noundef readonly %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 1
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx) #4
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
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component2, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  %cmp.not = icmp eq ptr %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %cond = icmp eq i32 %level, 2
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %16 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dapm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp4.not = icmp eq i32 %17, 1
  br i1 %cmp4.not, label %if.end6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %call7 = tail call i32 @snd_soc_component_set_pll(ptr noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef 24576000, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call7) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end6.if.end11_crit_edge
  %asyncclk_rate = getelementptr inbounds %struct.bells_drvdata, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %asyncclk_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asyncclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.then12

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end11
  %call14 = tail call i32 @snd_soc_component_set_pll(ptr noundef %11, i32 noundef 2, i32 noundef 9, i32 noundef 512000, i32 noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call14) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then12.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bells_set_bias_level_post(ptr noundef %card, ptr nocapture noundef %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 1
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx) #4
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
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component2, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  %cmp.not = icmp eq ptr %13, %15
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cond = icmp eq i32 %level, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %call4 = tail call i32 @snd_soc_component_set_pll(ptr noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call4) #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %asyncclk_rate = getelementptr inbounds %struct.bells_drvdata, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %asyncclk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asyncclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end8.sw.epilog_crit_edge, label %if.then9

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then9:                                         ; preds = %if.end8
  %call10 = tail call i32 @snd_soc_component_set_pll(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.then9.sw.epilog_crit_edge

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call10) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.then9.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %18 = ptrtoint ptr %dapm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %level, ptr %dapm, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call10, %do.end15 ], [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !82, !84, !86, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !151, !153, !154, !155, !156, !157, !159, !161, !163, !164, !165, !167, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__initcall__kmod_snd_soc_bells__294_488_bells_driver_init6, !1, !"__initcall__kmod_snd_soc_bells__294_488_bells_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/bells.c", i32 488, i32 1}
!2 = !{ptr @__exitcall_bells_driver_exit, !1, !"__exitcall_bells_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/bells.c", i32 490, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/bells.c", i32 491, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/bells.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias299, !11, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/bells.c", i32 493, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/bells.c", i32 482, i32 11}
!14 = !{ptr @bells_driver, !15, !"bells_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/bells.c", i32 480, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/bells.c", i32 473, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bells_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bells_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/samsung/bells.c", i32 404, i32 11}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/samsung/bells.c", i32 424, i32 11}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/samsung/bells.c", i32 444, i32 11}
!30 = !{ptr @bells_cards, !31, !"bells_cards", i1 false, i1 false}
!31 = !{!"../sound/soc/samsung/bells.c", i32 402, i32 28}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/bells.c", i32 166, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bells_late_probe._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @bells_late_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/samsung/bells.c", i32 172, i32 3}
!39 = !{ptr @bells_late_probe._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bells_late_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/samsung/bells.c", i32 178, i32 3}
!43 = !{ptr @bells_late_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bells_late_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/samsung/bells.c", i32 183, i32 3}
!47 = !{ptr @bells_late_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bells_late_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/samsung/bells.c", i32 193, i32 3}
!51 = !{ptr @bells_late_probe._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bells_late_probe._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/samsung/bells.c", i32 202, i32 3}
!55 = !{ptr @bells_late_probe._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bells_late_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @bells_late_probe._entry.26, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../sound/soc/samsung/bells.c", i32 215, i32 3}
!59 = !{ptr @bells_late_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/samsung/bells.c", i32 222, i32 3}
!62 = !{ptr @bells_late_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bells_late_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/samsung/bells.c", i32 79, i32 4}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bells_set_bias_level._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @bells_set_bias_level._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @bells_set_bias_level._entry.33, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/bells.c", i32 87, i32 5}
!71 = !{ptr @bells_set_bias_level._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/samsung/bells.c", i32 119, i32 4}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bells_set_bias_level_post._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @bells_set_bias_level_post._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @bells_set_bias_level_post._entry.37, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../sound/soc/samsung/bells.c", i32 127, i32 5}
!79 = !{ptr @bells_set_bias_level_post._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/samsung/bells.c", i32 256, i32 11}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/samsung/bells.c", i32 263, i32 11}
!84 = !{ptr @bells_dai_wm2200, !85, !"bells_dai_wm2200", i1 false, i1 false}
!85 = !{!"../sound/soc/samsung/bells.c", i32 254, i32 32}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/samsung/bells.c", i32 245, i32 1}
!88 = !{ptr @wm2200_cpu_dsp_cpus, !87, !"wm2200_cpu_dsp_cpus", i1 false, i1 false}
!89 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @wm2200_cpu_dsp_codecs, !87, !"wm2200_cpu_dsp_codecs", i1 false, i1 false}
!92 = !{ptr @wm2200_cpu_dsp_platforms, !87, !"wm2200_cpu_dsp_platforms", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/samsung/bells.c", i32 250, i32 1}
!95 = !{ptr @wm2200_dsp_codec_cpus, !94, !"wm2200_dsp_codec_cpus", i1 false, i1 false}
!96 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wm2200_dsp_codec_codecs, !94, !"wm2200_dsp_codec_codecs", i1 false, i1 false}
!99 = !{ptr @wm2200_dsp_codec_platforms, !94, !"wm2200_dsp_codec_platforms", i1 false, i1 false}
!100 = !{ptr @sub_params, !101, !"sub_params", i1 false, i1 false}
!101 = !{!"../sound/soc/samsung/bells.c", i32 237, i32 40}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/samsung/bells.c", i32 384, i32 10}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/samsung/bells.c", i32 385, i32 18}
!106 = !{ptr @bells_codec_conf, !107, !"bells_codec_conf", i1 false, i1 false}
!107 = !{!"../sound/soc/samsung/bells.c", i32 382, i32 34}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/samsung/bells.c", i32 390, i32 2}
!110 = !{ptr @bells_widgets, !111, !"bells_widgets", i1 false, i1 false}
!111 = !{!"../sound/soc/samsung/bells.c", i32 389, i32 35}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/samsung/bells.c", i32 394, i32 4}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/samsung/bells.c", i32 394, i32 25}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/samsung/bells.c", i32 395, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/samsung/bells.c", i32 397, i32 18}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/samsung/bells.c", i32 398, i32 4}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/samsung/bells.c", i32 399, i32 4}
!124 = !{ptr @bells_routes, !125, !"bells_routes", i1 false, i1 false}
!125 = !{!"../sound/soc/samsung/bells.c", i32 393, i32 34}
!126 = !{ptr @wm2200_drvdata, !127, !"wm2200_drvdata", i1 false, i1 false}
!127 = !{!"../sound/soc/samsung/bells.c", i32 38, i32 29}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/samsung/bells.c", i32 308, i32 11}
!130 = !{ptr @bells_dai_wm5102, !131, !"bells_dai_wm5102", i1 false, i1 false}
!131 = !{!"../sound/soc/samsung/bells.c", i32 290, i32 32}
!132 = !{ptr @wm5102_cpu_dsp_cpus, !133, !"wm5102_cpu_dsp_cpus", i1 false, i1 false}
!133 = !{!"../sound/soc/samsung/bells.c", i32 273, i32 1}
!134 = !{ptr @wm5102_cpu_dsp_codecs, !133, !"wm5102_cpu_dsp_codecs", i1 false, i1 false}
!135 = !{ptr @wm5102_cpu_dsp_platforms, !133, !"wm5102_cpu_dsp_platforms", i1 false, i1 false}
!136 = !{ptr @wm5102_dsp_codec_cpus, !137, !"wm5102_dsp_codec_cpus", i1 false, i1 false}
!137 = !{!"../sound/soc/samsung/bells.c", i32 278, i32 1}
!138 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @wm5102_dsp_codec_codecs, !137, !"wm5102_dsp_codec_codecs", i1 false, i1 false}
!141 = !{ptr @wm5102_dsp_codec_platforms, !137, !"wm5102_dsp_codec_platforms", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/samsung/bells.c", i32 282, i32 1}
!144 = !{ptr @wm5102_baseband_cpus, !143, !"wm5102_baseband_cpus", i1 false, i1 false}
!145 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @wm5102_baseband_codecs, !143, !"wm5102_baseband_codecs", i1 false, i1 false}
!148 = !{ptr @wm5102_baseband_platforms, !143, !"wm5102_baseband_platforms", i1 false, i1 false}
!149 = !{ptr @baseband_params, !150, !"baseband_params", i1 false, i1 false}
!150 = !{!"../sound/soc/samsung/bells.c", i32 229, i32 40}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/samsung/bells.c", i32 286, i32 1}
!153 = !{ptr @wm5102_sub_cpus, !152, !"wm5102_sub_cpus", i1 false, i1 false}
!154 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @wm5102_sub_codecs, !152, !"wm5102_sub_codecs", i1 false, i1 false}
!156 = !{ptr @wm5102_sub_platforms, !152, !"wm5102_sub_platforms", i1 false, i1 false}
!157 = !{ptr @wm5102_drvdata, !158, !"wm5102_drvdata", i1 false, i1 false}
!158 = !{!"../sound/soc/samsung/bells.c", i32 42, i32 29}
!159 = !{ptr @bells_dai_wm5110, !160, !"bells_dai_wm5110", i1 false, i1 false}
!160 = !{!"../sound/soc/samsung/bells.c", i32 345, i32 32}
!161 = !{ptr @wm5110_cpu_dsp_cpus, !162, !"wm5110_cpu_dsp_cpus", i1 false, i1 false}
!162 = !{!"../sound/soc/samsung/bells.c", i32 327, i32 1}
!163 = !{ptr @wm5110_cpu_dsp_codecs, !162, !"wm5110_cpu_dsp_codecs", i1 false, i1 false}
!164 = !{ptr @wm5110_cpu_dsp_platforms, !162, !"wm5110_cpu_dsp_platforms", i1 false, i1 false}
!165 = !{ptr @wm5110_dsp_codec_cpus, !166, !"wm5110_dsp_codec_cpus", i1 false, i1 false}
!166 = !{!"../sound/soc/samsung/bells.c", i32 332, i32 1}
!167 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @wm5110_dsp_codec_codecs, !166, !"wm5110_dsp_codec_codecs", i1 false, i1 false}
!170 = !{ptr @wm5110_dsp_codec_platforms, !166, !"wm5110_dsp_codec_platforms", i1 false, i1 false}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/samsung/bells.c", i32 336, i32 1}
!173 = !{ptr @wm5110_baseband_cpus, !172, !"wm5110_baseband_cpus", i1 false, i1 false}
!174 = !{ptr @wm5110_baseband_codecs, !172, !"wm5110_baseband_codecs", i1 false, i1 false}
!175 = !{ptr @wm5110_baseband_platforms, !172, !"wm5110_baseband_platforms", i1 false, i1 false}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/samsung/bells.c", i32 341, i32 1}
!178 = !{ptr @wm5110_sub_cpus, !177, !"wm5110_sub_cpus", i1 false, i1 false}
!179 = !{ptr @wm5110_sub_codecs, !177, !"wm5110_sub_codecs", i1 false, i1 false}
!180 = !{ptr @wm5110_sub_platforms, !177, !"wm5110_sub_platforms", i1 false, i1 false}
!181 = !{ptr @wm5110_drvdata, !182, !"wm5110_drvdata", i1 false, i1 false}
!182 = !{!"../sound/soc/samsung/bells.c", i32 47, i32 29}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
